import pandas as pd

def find_products(Products: pd.DataFrame) -> pd.DataFrame:
    return Products[
        (Products["low_fats"] == "Y") &
        (Products["recyclable"] == "Y")
    ][["product_id"]]