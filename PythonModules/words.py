#!/usr/bin/env python3
"""Retrieve and print words from a url

	Usage:
		python3 words.py <URL>

"""

import sys
from urllib.request import urlopen


def fetch_words(url):
	"""Fetch a list of words from a url.

		Arguments:
			url: The url of a UTF-8 text document

		Returns:
			A list of strings containing the words of the text.
	"""
    with urlopen(url) as story:
        story_words = []
        for line in story:
            line_words = line.decode('utf-8').split()    # Without the ".decode('utf-8')" line, python will download the content in bytes form
            for word in line_words:
                story_words.append(word)
                print(word)


def print_items(items):
	"""Print items one per line.

		Args:
			A series of printable items.
	"""
    for item in items:
        print(item)


def main(url):
	"""Print each word from a text document from a url.

		Args:
			url: The url of a UTF-8 text document
	"""
    words = fetch_words(url)
    print_items(words)


if __name__ == '__main__':
    main(sys.argv[1])	# The 0th arg is the reason we need to import sys at the top of the file



