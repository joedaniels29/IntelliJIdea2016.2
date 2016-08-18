=begin
 This is a machine generated stub using stdlib-doc for <b>module SQLite3</b>
 Sources used:  gem sqlite3, v. 1.3.9
 Created on 2014-03-19 11:13:07 -0400 by IntelliJ Ruby Stubs Generator.
=end

# SQLite3 is a wrapper around the popular database
# sqlite[http://sqlite.org].
# 
# For an example of usage, see SQLite3::Database.
module SQLite3
    SQLITE_VERSION = nil #value is unknown, used for indexing.
    SQLITE_VERSION_NUMBER = nil #value is unknown, used for indexing.
    def self.libversion()
        #This is a stub, used for indexing
    end
    class Backup
        # SQLite3::Backup.new(dstdb, dstname, srcdb, srcname)
        #  
        # Initialize backup the backup.
        # 
        # dstdb:
        #   the destination SQLite3::Database object.
        # dstname:
        #   the destination's database name.
        # srcdb:
        #   the source SQLite3::Database object.
        # srcname:
        #   the source's database name.
        # 
        # The database name is "main", "temp", or the name specified in an
        # ATTACH statement.
        # 
        # This feature requires SQLite 3.6.11 or later.
        # 
        #   require 'sqlite3'
        #   sdb = SQLite3::Database.new('src.sqlite3')
        # 
        #   ddb = SQLite3::Database.new(':memory:')
        #   b = SQLite3::Backup.new(ddb, 'main', sdb, 'main')
        #   p [b.remaining, b.pagecount] # invalid value; for example [0, 0]
        #   begin
        #     p b.step(1) #=> OK or DONE
        #     p [b.remaining, b.pagecount]
        #   end while b.remaining > 0
        #   b.finish
        # 
        #   ddb = SQLite3::Database.new(':memory:')
        #   b = SQLite3::Backup.new(ddb, 'main', sdb, 'main')
        #   b.step(-1) #=> DONE
        #   b.finish
        def self.new(dstdb, dstname, srcdb, srcname)
            #This is a stub, used for indexing
        end
        # SQLite3::Backup#step(nPage)
        #  
        # Copy database pages up to +nPage+.
        # If negative, copy all remaining source pages.
        # 
        # If all pages are copied, it returns SQLite3::Constants::ErrorCode::DONE.
        # When coping is not done, it returns SQLite3::Constants::ErrorCode::OK.
        # When some errors occur, it returns the error code.
        def step(nPage)
            #This is a stub, used for indexing
        end
        # SQLite3::Backup#finish
        #  
        # Destroy the backup object.
        def finish()
            #This is a stub, used for indexing
        end
        # SQLite3::Backup#remaining
        #  
        # Returns the number of pages still to be backed up.
        # 
        # Note that the value is only updated after step() is called,
        # so before calling step() returned value is invalid.
        def remaining()
            #This is a stub, used for indexing
        end
        # SQLite3::Backup#pagecount
        #  
        # Returns the total number of pages in the source database file.
        # 
        # Note that the value is only updated after step() is called,
        # so before calling step() returned value is invalid.
        def pagecount()
            #This is a stub, used for indexing
        end
    end
    class Blob < String
    end
    class Database
        # SQLite3::Database.new(file, options = {})
        #  
        # Create a new Database object that opens the given file. If utf16
        # is +true+, the filename is interpreted as a UTF-16 encoded string.
        # 
        # By default, the new database will return result rows as arrays
        # (#results_as_hash) and has type translation disabled (#type_translation=).
        def self.new(file, options = {})
            #This is a stub, used for indexing
        end
        # db.collation(name, comparator)
        #  
        # Add a collation with name +name+, and a +comparator+ object.  The
        # +comparator+ object should implement a method called "compare" that takes
        # two parameters and returns an integer less than, equal to, or greater than
        # 0.
        def collation(name, comparator)
            #This is a stub, used for indexing
        end
        # db.close
        #  
        # Closes this database.
        def close()
            #This is a stub, used for indexing
        end
        # db.closed?
        #  
        # Returns +true+ if this database instance has been closed (see #close).
        def closed?()
            #This is a stub, used for indexing
        end
        # total_changes
        #  
        # Returns the total number of changes made to this database instance
        # since it was opened.
        def total_changes()
            #This is a stub, used for indexing
        end
        # trace { |sql| ... }
        # trace(Class.new { def call sql; end }.new)
        #  
        # Installs (or removes) a block that will be invoked for every SQL
        # statement executed. The block receives one parameter: the SQL statement
        # executed. If the block is +nil+, any existing tracer will be uninstalled.
        def trace(*several_variants)
            #This is a stub, used for indexing
        end
        # last_insert_row_id
        #  
        # Obtains the unique row ID of the last row to be inserted by this Database
        # instance.
        def last_insert_row_id()
            #This is a stub, used for indexing
        end
        # define_function(name) { |args,...| }
        #  
        # Define a function named +name+ with +args+.  The arity of the block
        # will be used as the arity for the function defined.
        def define_function(name)
            #This is a stub, used for indexing
        end
        # define_aggregator(name, aggregator)
        #  
        # Define an aggregate function named +name+ using the object +aggregator+.
        # +aggregator+ must respond to +step+ and +finalize+.  +step+ will be called
        # with row information and +finalize+ must return the return value for the
        # aggregator function.
        def define_aggregator(name, aggregator)
            #This is a stub, used for indexing
        end
        # interrupt
        #  
        # Interrupts the currently executing operation, causing it to abort.
        def interrupt()
            #This is a stub, used for indexing
        end
        # errmsg
        #  
        # Return a string describing the last error to have occurred with this
        # database.
        def errmsg()
            #This is a stub, used for indexing
        end
        # errcode
        #  
        # Return an integer representing the last error to have occurred with this
        # database.
        def errcode()
            #This is a stub, used for indexing
        end
        # complete?(sql)
        #  
        # Return +true+ if the string is a valid (ie, parsable) SQL statement, and
        # +false+ otherwise.
        def complete?(sql)
            #This is a stub, used for indexing
        end
        # changes
        #  
        # Returns the number of changes made to this database instance by the last
        # operation performed. Note that a "delete from table" without a where
        # clause will not affect this value.
        def changes()
            #This is a stub, used for indexing
        end
        # set_authorizer = auth
        #  
        # Set the authorizer for this database.  +auth+ must respond to +call+, and
        # +call+ must take 5 arguments.
        # 
        # Installs (or removes) a block that will be invoked for every access
        # to the database. If the block returns 0 (or +true+), the statement
        # is allowed to proceed. Returning 1 or false causes an authorization error to
        # occur, and returning 2 or nil causes the access to be silently denied.
        def authorizer=(p1)
            #This is a stub, used for indexing
        end
        # busy_handler { |count| ... }
        # busy_handler(Class.new { def call count; end }.new)
        #  
        # Register a busy handler with this database instance. When a requested
        # resource is busy, this handler will be invoked. If the handler returns
        # +false+, the operation will be aborted; otherwise, the resource will
        # be requested again.
        # 
        # The handler will be invoked with the name of the resource that was
        # busy, and the number of times it has been retried.
        # 
        # See also the mutually exclusive #busy_timeout.
        def busy_handler(*several_variants)
            #This is a stub, used for indexing
        end
        # db.busy_timeout = ms
        #  
        # Indicates that if a request for a resource terminates because that
        # resource is busy, SQLite should sleep and retry for up to the indicated
        # number of milliseconds. By default, SQLite does not retry
        # busy resources. To restore the default behavior, send 0 as the
        # +ms+ parameter.
        # 
        # See also the mutually exclusive #busy_handler.
        def busy_timeout= ms
            #This is a stub, used for indexing
        end
        # db.transaction_active?
        #  
        # Returns +true+ if there is a transaction active, and +false+ otherwise.
        def transaction_active?()
            #This is a stub, used for indexing
        end
        # db.load_extension(file)
        #  
        # Loads an SQLite extension library from the named file. Extension
        # loading must be enabled using db.enable_load_extension(true) prior
        # to calling this API.
        def load_extension(file)
            #This is a stub, used for indexing
        end
        # db.enable_load_extension(onoff)
        #  
        # Enable or disable extension loading.
        def enable_load_extension(onoff)
            #This is a stub, used for indexing
        end
        # db.encoding
        #  
        # Fetch the encoding set on this database
        def encoding()
            #This is a stub, used for indexing
        end
    end
    class Statement
        # SQLite3::Statement.new(db, sql)
        #  
        # Create a new statement attached to the given Database instance, and which
        # encapsulates the given SQL text. If the text contains more than one
        # statement (i.e., separated by semicolons), then the #remainder property
        # will be set to the trailing text.
        def self.new(db, sql)
            #This is a stub, used for indexing
        end
        # stmt.close
        #  
        # Closes the statement by finalizing the underlying statement
        # handle. The statement must not be used after being closed.
        def close()
            #This is a stub, used for indexing
        end
        # stmt.closed?
        #  
        # Returns true if the statement has been closed.
        def closed?()
            #This is a stub, used for indexing
        end
        # stmt.bind_param(key, value)
        #  
        # Binds value to the named (or positional) placeholder. If +param+ is a
        # Fixnum, it is treated as an index for a positional placeholder.
        # Otherwise it is used as the name of the placeholder to bind to.
        # 
        # See also #bind_params.
        def bind_param(key, value)
            #This is a stub, used for indexing
        end
        # stmt.reset!
        #  
        # Resets the statement. This is typically done internally, though it might
        # occassionally be necessary to manually reset the statement.
        def reset!()
            #This is a stub, used for indexing
        end
        # stmt.clear_bindings!
        #  
        # Resets the statement. This is typically done internally, though it might
        # occassionally be necessary to manually reset the statement.
        def clear_bindings!()
            #This is a stub, used for indexing
        end
        def step()
            #This is a stub, used for indexing
        end
        # stmt.done?
        #  
        # returns true if all rows have been returned.
        def done?()
            #This is a stub, used for indexing
        end
        # stmt.column_count
        #  
        # Returns the number of columns to be returned for this statement
        def column_count()
            #This is a stub, used for indexing
        end
        # stmt.column_name(index)
        #  
        # Get the column name at +index+.  0 based.
        def column_name(index)
            #This is a stub, used for indexing
        end
        # stmt.column_decltype(index)
        #  
        # Get the column type at +index+.  0 based.
        def column_decltype(index)
            #This is a stub, used for indexing
        end
        # stmt.bind_parameter_count
        #  
        # Return the number of bind parameters
        def bind_parameter_count()
            #This is a stub, used for indexing
        end
        # stmt.database_name(column_index)
        #  
        # Return the database name for the column at +column_index+
        def database_name(column_index)
            #This is a stub, used for indexing
        end
    end
end
