[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "postal_regions_csv_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared postal_regions_csv = let
  Source = Lakehouse.Contents(null),
  Navigation = Source{[workspaceId = "fafd9653-fb08-4428-a1d7-f4c1e586ea8b"]}[Data],
  #"Navigation 1" = Navigation{[lakehouseId = "29ebfb70-04b3-4b0e-998a-c09144d160f4"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Id = "Files", ItemKind = "Folder"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "ref"]}[Content],
  #"Navigation 4" = #"Navigation 3"{[Name = "postal_regions_csv"]}[Content],
  #"Filtered rows" = Table.SelectRows(#"Navigation 4", each ([Extension] = ".csv")),
  #"Navigation 5" = #"Filtered rows"{[Name = "part-00000-f8332d43-9711-4f4c-af24-4bea1dba35ad-c000.csv"]}[Content],
  #"Imported CSV" = Csv.Document(#"Navigation 5", [Delimiter = ",", Columns = 3, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(#"Imported CSV", [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"zip", Int64.Type}, {"region", type text}, {"country", type text}}),
  #"Renamed columns" = Table.RenameColumns(#"Changed column type", {{"zip", "postal_code"}}),
  #"Changed column type 1" = Table.TransformColumnTypes(#"Renamed columns", {{"postal_code", type text}}),
  #"Added custom" = Table.AddColumn(#"Changed column type 1", "region_key", each Text.Combine({[country], "-", [region]})),
  #"Changed column type 2" = Table.TransformColumnTypes(#"Added custom", {{"region_key", type text}})
in
  #"Changed column type 2";
shared postal_regions_csv_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "fafd9653-fb08-4428-a1d7-f4c1e586ea8b"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "0d6da972-b2d1-4d48-a64a-c491c29ae595"]}[Data],
  Navigation_3 = Navigation_2{[Id = "dbo", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "regions", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
