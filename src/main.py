def say_hello(name: str) -> str:
    return f"Hello, {name}!"


def main() -> None:
    me = "Vadim"
    hello_msg = say_hello(me)
    print(hello_msg)  # noqa: T001


if __name__ == "__main__":
    main()
