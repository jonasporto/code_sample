## Usage

Given an input.txt as the path of a file that contains all matches to be ranked, 
from calcrank/lib folder you can run the calcrank script in the following ways:

```ruby calcrank.rb input.txt```

```ruby calrankrb < input.txt```

```cat input.txt | ruby calcrank.rb```

The script parses the file via stdin (pipe or redirect) or by parsing a file passed by name on the command line

## Tests

From calcrank folder just run:

```rake```

or

```rake test```

## Dependencies

Intends to works with Ruby 1.9 or more recent versions