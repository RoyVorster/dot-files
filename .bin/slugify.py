#!/usr/bin/python

import re
import argparse

parser = argparse.ArgumentParser(description = 'Slugify any piece of text')

parser.add_argument('-t', '--text', help = 'Specify text to slugify', required = True)
parser.add_argument('-c', '--char', help = 'Specify the character between the words, default is -', required = False)
parser.add_argument('-p', '--precedingchar', help = 'Specify the character preceding the slug', required = False)
parser.add_argument('-s', '--subseqchar', help = 'Specify the character following the slug', required = False)

parser.add_argument('-l', '--list', help = 'Specify if you want to make a list', nargs = '?', const = True, required = False)

args = parser.parse_args()

def slugify(s, slug_char):
    s = s.lower()
    for c in [' ', '-', '.', '/']:
        s = s.replace(c, '_')

    s = re.sub('\W', '', s)

    s = s.replace('_', ' ')
    s = re.sub('\s+', ' ', s)
    s = s.strip()

    if (slug_char):
        s = s.replace(' ', slug_char)
        return s

    s = s.replace(' ', '-')

    return s

if (args.list):
    slug_char = "', '"
    args.precedingchar = "['"
    args.subseqchar = "']"
elif (args.char):
    slug_char = args.char
else:
    slug_char = False

slug = str('%s' + slugify(args.text, slug_char) + '%s') %(args.precedingchar if args.precedingchar else '',
                                           args.subseqchar if args.subseqchar else '')

print (slug)



