=begin
 This is a machine generated stub using stdlib-doc for <b>module Puma</b>
 Sources used:  gem puma, v. 2.9.0
 Created on 2014-08-18 21:59:43 -0400 by IntelliJ Ruby Stubs Generator.
=end

module Puma
    class HttpParser
        # parser.new -> parser
        #  
        # Creates a new parser.
        def self.new()
            #This is a stub, used for indexing
        end
        # parser.reset -> nil
        #  
        # Resets the parser to it's initial state so that you can reuse it
        # rather than making new ones.
        def reset()
            #This is a stub, used for indexing
        end
        # parser.finish -> true/false
        #  
        # Finishes a parser early which could put in a "good" or bad state.
        # You should call reset after finish it or bad things will happen.
        def finish()
            #This is a stub, used for indexing
        end
        # parser.execute(req_hash, data, start) -> Integer
        #  
        # Takes a Hash and a String of data, parses the String of data filling in the Hash
        # returning an Integer to indicate how much of the data has been read.  No matter
        # what the return value, you should call HttpParser#finished? and HttpParser#error?
        # to figure out if it's done parsing or there was an error.
        # 
        # This function now throws an exception when there is a parsing error.  This makes
        # the logic for working with the parser much easier.  You can still test for an
        # error, but now you need to wrap the parser with an exception handling block.
        # 
        # The third argument allows for parsing a partial request and then continuing
        # the parsing from that position.  It needs all of the original data as well
        # so you have to append to the data buffer as you read.
        def execute(req_hash, data, start)
            #This is a stub, used for indexing
        end
        # parser.error? -> true/false
        #  
        # Tells you whether the parser is in an error state.
        def error?()
            #This is a stub, used for indexing
        end
        # parser.finished? -> true/false
        #  
        # Tells you whether the parser is finished or not and in a good state.
        def finished?()
            #This is a stub, used for indexing
        end
        # parser.nread -> Integer
        #  
        # Returns the amount of data processed so far during this processing cycle.  It is
        # set to 0 on initialize or reset calls and is incremented each time execute is called.
        def nread()
            #This is a stub, used for indexing
        end
        # parser.body -> nil or String
        #  
        # If the request included a body, returns it.
        def body()
            #This is a stub, used for indexing
        end
    end
    class HttpParserError < IOError
    end
end
