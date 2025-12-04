import logger


def test_logger() -> None:
    _logger = logger.get_logger(__name__, to_console=True, to_file=True, file_max_bytes=10, file_backup_count=3)

    _logger.debug("debug message")
    _logger.info("info message")
    _logger.success("success message")
    _logger.warning("warning message")
    _logger.error("error message")
    _logger.critical("critical message")
    _logger.framework("framework message")


if __name__ == '__main__':
    test_logger()
