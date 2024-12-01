import pandas as pd

def not_boring_movies(cinema: pd.DataFrame) -> pd.DataFrame:
    result = cinema[cinema['id']%2 != 0]
    result = result[result['description'].str.contains('boring') == False].sort_values(by=['rating'], ascending=False)
    return(result)
