#!/usr/bin/env ruby


require 'shellwords'

colors = {
  red: "\e[31m",
  nocolor: "\e[0m"
}

options = {
  'resource-path': './src'
}

input = ARGV[1]
pdf = ARGV[2]

# Generating report
puts '[+] Generating report...'
`pandoc #{input.shellescape} -o #{pdf.shellescape} \
  --from markdown+yaml_metadata_block+raw_html \
  --template eisvogel \
  --table-of-contents \
  --toc-depth 6 \
  --number-sections \
  --top-level-division=chapter \
  --highlight-style breezedark \
  --resource-path=.:/usr/share/osert/src:src \
  --resource-path=#{options[:'resource-path'].shellescape}
`
puts "[+] PDF generated at #{colors[:red]}#{pdf}#{colors[:nocolor]}"
