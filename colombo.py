import sys

print(','.join([ "{%s}" % (','.join(line.split())) for line in sys.stdin]))
