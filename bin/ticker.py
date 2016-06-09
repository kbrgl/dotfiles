#!/usr/bin/env python3
import time
import argparse

parser = argparse.ArgumentParser(description='Create a scrolling row of text, similar to a stock ticker.')
parser.add_argument('-i', '--interval', dest='interval', default=0.2, type=float, help='ticker interval')
parser.add_argument('-n', '--newline', action='store_true', default=False, dest='newline', help='instead of using carriage returns to modify the ticker in place, print each permutation on a separate line.')
parser.add_argument('-s', '--separator', dest='sep', default=' ', help='the input string will be left-padded by this value')
parser.add_argument('-l', '--length', dest='len', type=int, default=0, help='text will only be scrolled if its length is greater than this value')
parser.add_argument('-c', '--count', dest='count', type=int, help='text will only be scrolled these many times')
parser.add_argument('-r', '--reverse', dest='reverse', action='store_true', help='scroll text in reverse')


def scroll(string, rev=False):
    return (string[-1] + string[:-1] if rev else string[1:] + string[0])

if __name__ == '__main__':
    args = parser.parse_args()
    string = input() + args.sep
    end = '\n' if args.newline else '\r'
    interval = 0 if args.interval < 0 else args.interval
    count = args.count if args.count else float('inf')
    i = 0

    if args.len >= len(string):
        while i < count:
            print(string, end=end)
            time.sleep(interval)
            i += 1
    else:
        while i < count:
            string = scroll(string) if not args.reverse else scroll(string, rev=True)
            print(string, end=end)
            time.sleep(interval)
            i += 1

