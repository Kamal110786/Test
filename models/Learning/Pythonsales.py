import snowflake.snowpark.functions as F

def model(dbt,session):
    df=session.sql("select * from NEWSCH.PRODUCT")

    df_filter=df.filter(F.col("REGION")=='West')

    return df