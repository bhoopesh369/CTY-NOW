from pragyan_hack.config import get_settings
from pragyan_hack.input import input
from pragyan_hack.output import output
from pragyan_hack.pipeline import pipeline

import pathway as pw

if __name__ == "__main__":
    get_settings()

    input_table = input()
    output_table = pipeline(input_table)
    output(output_table)

    pw.run(monitoring_level=pw.MonitoringLevel.ALL)
