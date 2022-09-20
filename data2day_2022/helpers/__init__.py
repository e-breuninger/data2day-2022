"""
Module to set up the log level globally.
"""

import logging
from dynaconf import settings

logging.basicConfig(level=getattr(logging, settings.LOG_LEVEL))
