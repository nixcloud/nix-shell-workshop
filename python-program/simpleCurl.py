import mechanize
import sys

br = mechanize.Browser()
r = br.open(sys.argv[1])
print r.read()
