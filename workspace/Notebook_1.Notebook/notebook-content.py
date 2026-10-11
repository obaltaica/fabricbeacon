# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "29ebfb70-04b3-4b0e-998a-c09144d160f4",
# META       "default_lakehouse_name": "lh_bronze",
# META       "default_lakehouse_workspace_id": "fafd9653-fb08-4428-a1d7-f4c1e586ea8b",
# META       "known_lakehouses": [
# META         {
# META           "id": "29ebfb70-04b3-4b0e-998a-c09144d160f4"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!
display(spark.read.option("header", True).csv("Files/ref/postal_regions_csv"))

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

display(spark.read.option("header", True).csv("Files/ref/postal_regions_csv"))

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
