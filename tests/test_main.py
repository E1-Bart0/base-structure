import pytest

from src.main import say_hello


@pytest.mark.parametrize(
    ("name", "expect_result"),
    [("Vadim", "Hello, Vadim!"), ("Polina", "Hello, Polina!")],
)
def test__say_hello(name: str, expect_result: str) -> None:
    assert say_hello(name) == expect_result
