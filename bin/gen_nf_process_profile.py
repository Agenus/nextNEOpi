#!/usr/bin/env python3

import datetime
from typing import Any, List, Optional
from pydantic import BaseModel
from jinja2 import Template
import json

file = "nextNEOpi.nf"

with open(file, "r") as fh:
    lines = fh.readlines()


# this is the grep statement to get me all the lines
# grep -n 'process' nextNEOpi.nf |grep '{' |grep -v publishDir | grep -v processSomatic | grep -v '/'

processes = []
for line in lines:
    if 'process ' in line and '{' in line:
        if '/' not in line and 'publishDir' not in line and 'processSomatic' not in line :
            process = line.replace('process', '').replace('{', '').strip()
            process = process.replace("'", '')
            process = process.replace('"', '')
            processes.append(process)
#    withName: CUSTOM_DUMPSOFTWAREVERSIONS {

template_string = """
profiles {% raw %} { {% endraw %} 
    omics {% raw %} { {% endraw %}  
        process {% raw %} { {% endraw %}
            {% for process in processes %}
            withName: {{process}} {% raw %} { {% endraw %}
            
            {% raw %}} {% endraw %}
        {% endfor %}
    {% raw %} } {% endraw %}
    {% raw %} } {% endraw %}
{% raw %} } {% endraw %}
"""
# Create the Jinja template object
template = Template(template_string)

# Render the template with the filtered data
result = template.render(processes=processes)
with open('conf/omics.config', 'w') as fh:
    fh.write(result)