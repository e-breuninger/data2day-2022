"""
Module providing functions to help querying BigQuery data.
"""
import logging

logger = logging.getLogger(__name__)


def read_query(filename: str) -> str:
    """
    Retrieve the query stored in the SQL file.

    Args:
        filename (string): path where to find the SQL file.
    Returns:
        string: the SQL query to be parametrized.
    """
    query = ""
    try:
        with open(filename, "r", encoding="UTF-8") as file:
            logger.debug("Retrieving the sql query from %s", filename)
            query = " ".join(
                map(lambda line: line.replace("\n", "").strip(), file.readlines())
            )
        file.close()
    except SyntaxError as error_message:
        print(f"Impossible to retrieve the query, error {error_message}")
    logger.debug("Retrieved query:\n%s", query)
    return query


if __name__ == "__main__":
    pass
