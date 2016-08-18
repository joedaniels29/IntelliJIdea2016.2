=begin
 This is a machine generated stub using stdlib-doc for <b>module PG</b>
 Sources used:  gem pg, v. 0.17.1
 Created on 2014-04-24 19:58:21 -0400 by IntelliJ Ruby Stubs Generator.
=end

module PG
    include PG::Constants
    # PG.library_version -> Integer
    #  
    # Get the version of the libpq library in use. The number is formed by
    # converting the major, minor, and revision numbers into two-decimal-
    # digit numbers and appending them together.
    # For example, version 7.4.2 will be returned as 70402, and version
    # 8.1 will be returned as 80100 (leading zeroes are not shown). Zero
    # is returned if the connection is bad.
    def self.library_version()
        #This is a stub, used for indexing
    end
    # PG.isthreadsafe            -> Boolean
    # PG.is_threadsafe?          -> Boolean
    # PG.threadsafe?             -> Boolean
    #  
    # Returns +true+ if libpq is thread-safe, +false+ otherwise.
    def self.isthreadsafe()
        #This is a stub, used for indexing
    end
    require 'rb_c_object '
    require 'rb_m_p_gconstants'
    class Connection < rb_cObject 
        include rb_mPGconstants
        # conn.escape_string( str ) -> String
        #  
        # Connection instance method for versions of 8.1 and higher of libpq
        # uses PQescapeStringConn, which is safer. Avoid calling as a class method,
        # the class method uses the deprecated PQescapeString() API function.
        # 
        # Returns a SQL-safe version of the String _str_.
        # This is the preferred way to make strings safe for inclusion in
        # SQL queries.
        # 
        # Consider using exec_params, which avoids the need for passing values
        # inside of SQL commands.
        # 
        # Encoding of escaped string will be equal to client encoding of connection.
        def self.escape_string( str )
            #This is a stub, used for indexing
        end
        # conn.escape_bytea( string ) -> String
        #  
        # Connection instance method for versions of 8.1 and higher of libpq
        # uses PQescapeByteaConn, which is safer. Avoid calling as a class method,
        # the class method uses the deprecated PQescapeBytea() API function.
        # 
        # Use the instance method version of this function, it is safer than the
        # class method.
        # 
        # Escapes binary data for use within an SQL command with the type +bytea+.
        # 
        # Certain byte values must be escaped (but all byte values may be escaped)
        # when used as part of a +bytea+ literal in an SQL statement. In general, to
        # escape a byte, it is converted into the three digit octal number equal to
        # the octet value, and preceded by two backslashes. The single quote (') and
        # backslash (\) characters have special alternative escape sequences.
        # #escape_bytea performs this operation, escaping only the minimally required
        # bytes.
        # 
        # Consider using exec_params, which avoids the need for passing values inside of
        # SQL commands.
        def self.escape_bytea( string )
            #This is a stub, used for indexing
        end
        # PG::Connection.unescape_bytea( string )
        #  
        # Converts an escaped string representation of binary data into binary data --- the
        # reverse of #escape_bytea. This is needed when retrieving +bytea+ data in text format,
        # but not when retrieving it in binary format.
        def self.unescape_bytea( string )
            #This is a stub, used for indexing
        end
        # PG::Connection.encrypt_password( password, username ) -> String
        #  
        # This function is intended to be used by client applications that
        # send commands like: +ALTER USER joe PASSWORD 'pwd'+.
        # The arguments are the cleartext password, and the SQL name
        # of the user it is for.
        # 
        # Return value is the encrypted password.
        def self.encrypt_password( password, username )
            #This is a stub, used for indexing
        end
        # PG::Connection.quote_ident( str ) -> String
        # conn.quote_ident( str ) -> String
        #  
        # Returns a string that is safe for inclusion in a SQL query as an
        # identifier. Note: this is not a quote function for values, but for
        # identifiers.
        # 
        # For example, in a typical SQL query: <tt>SELECT FOO FROM MYTABLE</tt>
        # The identifier <tt>FOO</tt> is folded to lower case, so it actually
        # means <tt>foo</tt>. If you really want to access the case-sensitive
        # field name <tt>FOO</tt>, use this function like
        # <tt>PG::Connection.quote_ident('FOO')</tt>, which will return <tt>"FOO"</tt>
        # (with double-quotes). PostgreSQL will see the double-quotes, and
        # it will not fold to lower case.
        # 
        # Similarly, this function also protects against special characters,
        # and other things that might allow SQL injection if the identifier
        # comes from an untrusted source.
        def self.quote_ident(*several_variants)
            #This is a stub, used for indexing
        end
        # PG::Connection.connect_start(connection_hash)       -> conn
        # PG::Connection.connect_start(connection_string)     -> conn
        # PG::Connection.connect_start(host, port, options, tty, dbname, login, password) ->  conn
        #  
        # This is an asynchronous version of PG::Connection.connect().
        # 
        # Use #connect_poll to poll the status of the connection.
        # 
        # NOTE: this does *not* set the connection's +client_encoding+ for you if
        # Encoding.default_internal is set. To set it after the connection is established,
        # call #internal_encoding=. You can also set it automatically by setting
        # ENV['PGCLIENTENCODING'], or include the 'options' connection parameter.
        def self.connect_start(*several_variants)
            #This is a stub, used for indexing
        end
        # PG::Connection.conndefaults() -> Array
        #  
        # Returns an array of hashes. Each hash has the keys:
        # [+:keyword+]
        #   the name of the option
        # [+:envvar+]
        #   the environment variable to fall back to
        # [+:compiled+]
        #   the compiled in option as a secondary fallback
        # [+:val+]
        #   the option's current value, or +nil+ if not known
        # [+:label+]
        #   the label for the field
        # [+:dispchar+]
        #   "" for normal, "D" for debug, and "*" for password
        # [+:dispsize+]
        #   field size
        def self.conndefaults()
            #This is a stub, used for indexing
        end
        # PG::Connection.ping(connection_hash)       -> Fixnum
        # PG::Connection.ping(connection_string)     -> Fixnum
        # PG::Connection.ping(host, port, options, tty, dbname, login, password) ->  Fixnum
        #  
        # Check server status.
        # 
        # Returns one of:
        # [+PQPING_OK+]
        #   server is accepting connections
        # [+PQPING_REJECT+]
        #   server is alive but rejecting connections
        # [+PQPING_NO_RESPONSE+]
        #   could not establish connection
        # [+PQPING_NO_ATTEMPT+]
        #   connection not attempted (bad params)
        def self.ping(*several_variants)
            #This is a stub, used for indexing
        end
        # PG::Connection.new -> conn
        # PG::Connection.new(connection_hash) -> conn
        # PG::Connection.new(connection_string) -> conn
        # PG::Connection.new(host, port, options, tty, dbname, user, password) ->  conn
        #  
        # Create a connection to the specified server.
        # 
        # [+host+]
        #   server hostname
        # [+hostaddr+]
        #   server address (avoids hostname lookup, overrides +host+)
        # [+port+]
        #   server port number
        # [+dbname+]
        #   connecting database name
        # [+user+]
        #   login user name
        # [+password+]
        #   login password
        # [+connect_timeout+]
        #   maximum time to wait for connection to succeed
        # [+options+]
        #   backend options
        # [+tty+]
        #   (ignored in newer versions of PostgreSQL)
        # [+sslmode+]
        #   (disable|allow|prefer|require)
        # [+krbsrvname+]
        #   kerberos service name
        # [+gsslib+]
        #   GSS library to use for GSSAPI authentication
        # [+service+]
        #   service name to use for additional parameters
        # 
        # Examples:
        # 
        #   # Connect using all defaults
        #   PG::Connection.new
        # 
        #   # As a Hash
        #   PG::Connection.new( :dbname => 'test', :port => 5432 )
        # 
        #   # As a String
        #   PG::Connection.new( "dbname=test port=5432" )
        # 
        #   # As an Array
        #   PG::Connection.new( nil, 5432, nil, nil, 'test', nil, nil )
        # 
        # If the Ruby default internal encoding is set (i.e., Encoding.default_internal != nil), the
        # connection will have its +client_encoding+ set accordingly.
        # 
        # Raises a PG::Error if the connection fails.
        def self.new(*several_variants)
            #This is a stub, used for indexing
        end
        # conn.connect_poll() -> Fixnum
        #  
        # Returns one of:
        # [+PGRES_POLLING_READING+]
        #   wait until the socket is ready to read
        # [+PGRES_POLLING_WRITING+]
        #   wait until the socket is ready to write
        # [+PGRES_POLLING_FAILED+]
        #   the asynchronous connection has failed
        # [+PGRES_POLLING_OK+]
        #   the asynchronous connection is ready
        # 
        # Example:
        #   conn = PG::Connection.connect_start("dbname=mydatabase")
        #   socket = conn.socket_io
        #   status = conn.connect_poll
        #   while(status != PG::PGRES_POLLING_OK) do
        #     # do some work while waiting for the connection to complete
        #     if(status == PG::PGRES_POLLING_READING)
        #       if(not select([socket], [], [], 10.0))
        #         raise "Asynchronous connection timed out!"
        #       end
        #     elsif(status == PG::PGRES_POLLING_WRITING)
        #       if(not select([], [socket], [], 10.0))
        #         raise "Asynchronous connection timed out!"
        #       end
        #     end
        #     status = conn.connect_poll
        #   end
        #   # now conn.status == CONNECTION_OK, and connection
        #   # is ready.
        def connect_poll()
            #This is a stub, used for indexing
        end
        # conn.finish
        #  
        # Closes the backend connection.
        def finish()
            #This is a stub, used for indexing
        end
        alias close finish
        # conn.finished?      -> boolean
        #  
        # Returns +true+ if the backend connection has been closed.
        def finished?()
            #This is a stub, used for indexing
        end
        # conn.reset()
        #  
        # Resets the backend connection. This method closes the
        # backend connection and tries to re-connect.
        def reset()
            #This is a stub, used for indexing
        end
        # conn.reset_start() -> nil
        #  
        # Initiate a connection reset in a nonblocking manner.
        # This will close the current connection and attempt to
        # reconnect using the same connection parameters.
        # Use #reset_poll to check the status of the
        # connection reset.
        def reset_start()
            #This is a stub, used for indexing
        end
        # conn.reset_poll -> Fixnum
        #  
        # Checks the status of a connection reset operation.
        # See #connect_start and #connect_poll for
        # usage information and return values.
        def reset_poll()
            #This is a stub, used for indexing
        end
        # conn.db()
        #  
        # Returns the connected database name.
        def db()
            #This is a stub, used for indexing
        end
        # conn.user()
        #  
        # Returns the authenticated user name.
        def user()
            #This is a stub, used for indexing
        end
        # conn.pass()
        #  
        # Returns the authenticated user name.
        def pass()
            #This is a stub, used for indexing
        end
        # conn.host()
        #  
        # Returns the connected server name.
        def host()
            #This is a stub, used for indexing
        end
        # conn.port()
        #  
        # Returns the connected server port number.
        def port()
            #This is a stub, used for indexing
        end
        # conn.tty()
        #  
        # Returns the connected pgtty. (Obsolete)
        def tty()
            #This is a stub, used for indexing
        end
        # conn.options()
        #  
        # Returns backend option string.
        def options()
            #This is a stub, used for indexing
        end
        # conn.status()
        #  
        # Returns status of connection : CONNECTION_OK or CONNECTION_BAD
        def status()
            #This is a stub, used for indexing
        end
        # conn.transaction_status()
        #  
        # returns one of the following statuses:
        #   PQTRANS_IDLE    = 0 (connection idle)
        #   PQTRANS_ACTIVE  = 1 (command in progress)
        #   PQTRANS_INTRANS = 2 (idle, within transaction block)
        #   PQTRANS_INERROR = 3 (idle, within failed transaction)
        #   PQTRANS_UNKNOWN = 4 (cannot determine status)
        def transaction_status()
            #This is a stub, used for indexing
        end
        # conn.parameter_status( param_name ) -> String
        #  
        # Returns the setting of parameter _param_name_, where
        # _param_name_ is one of
        # * +server_version+
        # * +server_encoding+
        # * +client_encoding+
        # * +is_superuser+
        # * +session_authorization+
        # * +DateStyle+
        # * +TimeZone+
        # * +integer_datetimes+
        # * +standard_conforming_strings+
        # 
        # Returns nil if the value of the parameter is not known.
        def parameter_status( param_name )
            #This is a stub, used for indexing
        end
        # conn.protocol_version -> Integer
        #  
        # The 3.0 protocol will normally be used when communicating with PostgreSQL 7.4
        # or later servers; pre-7.4 servers support only protocol 2.0. (Protocol 1.0 is
        # obsolete and not supported by libpq.)
        def protocol_version()
            #This is a stub, used for indexing
        end
        # conn.server_version -> Integer
        #  
        # The number is formed by converting the major, minor, and revision
        # numbers into two-decimal-digit numbers and appending them together.
        # For example, version 7.4.2 will be returned as 70402, and version
        # 8.1 will be returned as 80100 (leading zeroes are not shown). Zero
        # is returned if the connection is bad.
        def server_version()
            #This is a stub, used for indexing
        end
        # conn.error_message -> String
        #  
        # Returns the error message about connection.
        def error_message()
            #This is a stub, used for indexing
        end
        # conn.socket() -> Fixnum
        #  
        # Returns the socket's file descriptor for this connection.
        # <tt>IO.for_fd()</tt> can be used to build a proper IO object to the socket.
        # If you do so, you will likely also want to set <tt>autoclose=false</tt>
        # on it to prevent Ruby from closing the socket to PostgreSQL if it
        # goes out of scope. Alternatively, you can use #socket_io, which
        # creates an IO that's associated with the connection object itself,
        # and so won't go out of scope until the connection does.
        # 
        # *Note:* On Windows the file descriptor is not really usable,
        # since it can not be used to build a Ruby IO object.
        def socket()
            #This is a stub, used for indexing
        end
        # conn.socket_io() -> IO
        #  
        # Fetch a memoized IO object created from the Connection's underlying socket.
        # This object can be used for IO.select to wait for events while running
        # asynchronous API calls.
        # 
        # Using this instead of #socket avoids the problem of the underlying connection
        # being closed by Ruby when an IO created using <tt>IO.for_fd(conn.socket)</tt>
        # goes out of scope.
        # 
        # This method can also be used on Windows but requires Ruby-2.0+.
        def socket_io()
            #This is a stub, used for indexing
        end
        # conn.backend_pid() -> Fixnum
        #  
        # Returns the process ID of the backend server
        # process for this connection.
        # Note that this is a PID on database server host.
        def backend_pid()
            #This is a stub, used for indexing
        end
        # conn.connection_needs_password() -> Boolean
        #  
        # Returns +true+ if the authentication method required a
        # password, but none was available. +false+ otherwise.
        def connection_needs_password()
            #This is a stub, used for indexing
        end
        # conn.connection_used_password() -> Boolean
        #  
        # Returns +true+ if the authentication method used
        # a caller-supplied password, +false+ otherwise.
        def connection_used_password()
            #This is a stub, used for indexing
        end
        # conn.exec(sql) -> PG::Result
        # conn.exec(sql) {|pg_result| block }
        #  
        # Sends SQL query request specified by _sql_ to PostgreSQL.
        # Returns a PG::Result instance on success.
        # On failure, it raises a PG::Error.
        # 
        # For backward compatibility, if you pass more than one parameter to this method,
        # it will call #exec_params for you. New code should explicitly use #exec_params if
        # argument placeholders are used.
        # 
        # If the optional code block is given, it will be passed <i>result</i> as an argument,
        # and the PG::Result object will  automatically be cleared when the block terminates.
        # In this instance, <code>conn.exec</code> returns the value of the block.
        # 
        # #exec is implemented on the synchronous command processing API of libpq, whereas
        # #async_exec is implemented on the asynchronous API.
        # #exec is somewhat faster that #async_exec, but blocks any signals to be processed until
        # the query is finished. This is most notably visible by a delayed reaction to Control+C.
        # Both methods ensure that other threads can process while waiting for the server to
        # complete the request.
        def exec(*several_variants)
            #This is a stub, used for indexing
        end
        alias query exec
        # conn.exec_params(sql, params[, result_format ] ) -> PG::Result
        # conn.exec_params(sql, params[, result_format ] ) {|pg_result| block }
        #  
        # Sends SQL query request specified by +sql+ to PostgreSQL using placeholders
        # for parameters.
        # 
        # Returns a PG::Result instance on success. On failure, it raises a PG::Error.
        # 
        # +params+ is an array of the bind parameters for the SQL query.
        # Each element of the +params+ array may be either:
        #   a hash of the form:
        #     {:value  => String (value of bind parameter)
        #      :type   => Fixnum (oid of type of bind parameter)
        #      :format => Fixnum (0 for text, 1 for binary)
        #     }
        #   or, it may be a String. If it is a string, that is equivalent to the hash:
        #     { :value => <string value>, :type => 0, :format => 0 }
        # 
        # PostgreSQL bind parameters are represented as $1, $1, $2, etc.,
        # inside the SQL query. The 0th element of the +params+ array is bound
        # to $1, the 1st element is bound to $2, etc. +nil+ is treated as +NULL+.
        # 
        # If the types are not specified, they will be inferred by PostgreSQL.
        # Instead of specifying type oids, it's recommended to simply add
        # explicit casts in the query to ensure that the right type is used.
        # 
        # For example: "SELECT $1::int"
        # 
        # The optional +result_format+ should be 0 for text results, 1
        # for binary.
        # 
        # If the optional code block is given, it will be passed <i>result</i> as an argument,
        # and the PG::Result object will  automatically be cleared when the block terminates.
        # In this instance, <code>conn.exec</code> returns the value of the block.
        def exec_params(*several_variants)
            #This is a stub, used for indexing
        end
        # conn.prepare(stmt_name, sql [, param_types ] ) -> PG::Result
        #  
        # Prepares statement _sql_ with name _name_ to be executed later.
        # Returns a PG::Result instance on success.
        # On failure, it raises a PG::Error.
        # 
        # +param_types+ is an optional parameter to specify the Oids of the
        # types of the parameters.
        # 
        # If the types are not specified, they will be inferred by PostgreSQL.
        # Instead of specifying type oids, it's recommended to simply add
        # explicit casts in the query to ensure that the right type is used.
        # 
        # For example: "SELECT $1::int"
        # 
        # PostgreSQL bind parameters are represented as $1, $1, $2, etc.,
        # inside the SQL query.
        def prepare(p1, p2, p3 = v3)
            #This is a stub, used for indexing
        end
        # conn.exec_prepared(statement_name [, params, result_format ] ) -> PG::Result
        # conn.exec_prepared(statement_name [, params, result_format ] ) {|pg_result| block }
        #  
        # Execute prepared named statement specified by _statement_name_.
        # Returns a PG::Result instance on success.
        # On failure, it raises a PG::Error.
        # 
        # +params+ is an array of the optional bind parameters for the
        # SQL query. Each element of the +params+ array may be either:
        #   a hash of the form:
        #     {:value  => String (value of bind parameter)
        #      :format => Fixnum (0 for text, 1 for binary)
        #     }
        #   or, it may be a String. If it is a string, that is equivalent to the hash:
        #     { :value => <string value>, :format => 0 }
        # 
        # PostgreSQL bind parameters are represented as $1, $1, $2, etc.,
        # inside the SQL query. The 0th element of the +params+ array is bound
        # to $1, the 1st element is bound to $2, etc. +nil+ is treated as +NULL+.
        # 
        # The optional +result_format+ should be 0 for text results, 1
        # for binary.
        # 
        # If the optional code block is given, it will be passed <i>result</i> as an argument,
        # and the PG::Result object will  automatically be cleared when the block terminates.
        # In this instance, <code>conn.exec_prepared</code> returns the value of the block.
        def exec_prepared(*several_variants)
            #This is a stub, used for indexing
        end
        # conn.describe_prepared( statement_name ) -> PG::Result
        #  
        # Retrieve information about the prepared statement
        # _statement_name_.
        def describe_prepared( statement_name )
            #This is a stub, used for indexing
        end
        # conn.describe_portal( portal_name ) -> PG::Result
        #  
        # Retrieve information about the portal _portal_name_.
        def describe_portal( portal_name )
            #This is a stub, used for indexing
        end
        # conn.make_empty_pgresult( status ) -> PG::Result
        #  
        # Constructs and empty PG::Result with status _status_.
        # _status_ may be one of:
        # * +PGRES_EMPTY_QUERY+
        # * +PGRES_COMMAND_OK+
        # * +PGRES_TUPLES_OK+
        # * +PGRES_COPY_OUT+
        # * +PGRES_COPY_IN+
        # * +PGRES_BAD_RESPONSE+
        # * +PGRES_NONFATAL_ERROR+
        # * +PGRES_FATAL_ERROR+
        # * +PGRES_COPY_BOTH+
        def make_empty_pgresult( status )
            #This is a stub, used for indexing
        end
        # conn.escape_string( str ) -> String
        #  
        # Connection instance method for versions of 8.1 and higher of libpq
        # uses PQescapeStringConn, which is safer. Avoid calling as a class method,
        # the class method uses the deprecated PQescapeString() API function.
        # 
        # Returns a SQL-safe version of the String _str_.
        # This is the preferred way to make strings safe for inclusion in
        # SQL queries.
        # 
        # Consider using exec_params, which avoids the need for passing values
        # inside of SQL commands.
        # 
        # Encoding of escaped string will be equal to client encoding of connection.
        def escape_string( str )
            #This is a stub, used for indexing
        end
        alias escape escape_string
        # conn.escape_literal( str ) -> String
        #  
        # Escape an arbitrary String +str+ as a literal.
        def escape_literal( str )
            #This is a stub, used for indexing
        end
        # conn.escape_identifier( str ) -> String
        #  
        # Escape an arbitrary String +str+ as an identifier.
        # 
        # This method does the same as #quote_ident, but uses libpq to
        # process the string.
        def escape_identifier( str )
            #This is a stub, used for indexing
        end
        # conn.escape_bytea( string ) -> String
        #  
        # Connection instance method for versions of 8.1 and higher of libpq
        # uses PQescapeByteaConn, which is safer. Avoid calling as a class method,
        # the class method uses the deprecated PQescapeBytea() API function.
        # 
        # Use the instance method version of this function, it is safer than the
        # class method.
        # 
        # Escapes binary data for use within an SQL command with the type +bytea+.
        # 
        # Certain byte values must be escaped (but all byte values may be escaped)
        # when used as part of a +bytea+ literal in an SQL statement. In general, to
        # escape a byte, it is converted into the three digit octal number equal to
        # the octet value, and preceded by two backslashes. The single quote (') and
        # backslash (\) characters have special alternative escape sequences.
        # #escape_bytea performs this operation, escaping only the minimally required
        # bytes.
        # 
        # Consider using exec_params, which avoids the need for passing values inside of
        # SQL commands.
        def escape_bytea( string )
            #This is a stub, used for indexing
        end
        # PG::Connection.unescape_bytea( string )
        #  
        # Converts an escaped string representation of binary data into binary data --- the
        # reverse of #escape_bytea. This is needed when retrieving +bytea+ data in text format,
        # but not when retrieving it in binary format.
        def unescape_bytea( string )
            #This is a stub, used for indexing
        end
        # conn.set_single_row_mode -> self
        #  
        # To enter single-row mode, call this method immediately after a successful
        # call of send_query (or a sibling function). This mode selection is effective
        # only for the currently executing query.
        # Then call Connection#get_result repeatedly, until it returns nil.
        # 
        # Each (but the last) received Result has exactly one row and a
        # Result#result_status of PGRES_SINGLE_TUPLE. The last row has
        # zero rows and is used to indicate a successful execution of the query.
        # All of these Result objects will contain the same row description data
        # (column names, types, etc) that an ordinary Result object for the query
        # would have.
        # 
        # *Caution:* While processing a query, the server may return some rows and
        # then encounter an error, causing the query to be aborted. Ordinarily, pg
        # discards any such rows and reports only the error. But in single-row mode,
        # those rows will have already been returned to the application. Hence, the
        # application will see some Result objects followed by an Error raised in get_result.
        # For proper transactional behavior, the application must be designed to discard
        # or undo whatever has been done with the previously-processed rows, if the query
        # ultimately fails.
        # 
        # Example:
        #   conn.send_query( "your SQL command" )
        #   conn.set_single_row_mode
        #   loop do
        #     res = conn.get_result or break
        #     res.check
        #     res.each do |row|
        #       # do something with the received row
        #     end
        #   end
        def set_single_row_mode()
            #This is a stub, used for indexing
        end
        # conn.send_query(sql [, params, result_format ] ) -> nil
        #  
        # Sends SQL query request specified by _sql_ to PostgreSQL for
        # asynchronous processing, and immediately returns.
        # On failure, it raises a PG::Error.
        # 
        # +params+ is an optional array of the bind parameters for the SQL query.
        # Each element of the +params+ array may be either:
        #   a hash of the form:
        #     {:value  => String (value of bind parameter)
        #      :type   => Fixnum (oid of type of bind parameter)
        #      :format => Fixnum (0 for text, 1 for binary)
        #     }
        #   or, it may be a String. If it is a string, that is equivalent to the hash:
        #     { :value => <string value>, :type => 0, :format => 0 }
        # 
        # PostgreSQL bind parameters are represented as $1, $1, $2, etc.,
        # inside the SQL query. The 0th element of the +params+ array is bound
        # to $1, the 1st element is bound to $2, etc. +nil+ is treated as +NULL+.
        # 
        # If the types are not specified, they will be inferred by PostgreSQL.
        # Instead of specifying type oids, it's recommended to simply add
        # explicit casts in the query to ensure that the right type is used.
        # 
        # For example: "SELECT $1::int"
        # 
        # The optional +result_format+ should be 0 for text results, 1
        # for binary.
        def send_query(p1, p2 = v2, p3 = v3)
            #This is a stub, used for indexing
        end
        # conn.send_prepare( stmt_name, sql [, param_types ] ) -> nil
        #  
        # Prepares statement _sql_ with name _name_ to be executed later.
        # Sends prepare command asynchronously, and returns immediately.
        # On failure, it raises a PG::Error.
        # 
        # +param_types+ is an optional parameter to specify the Oids of the
        # types of the parameters.
        # 
        # If the types are not specified, they will be inferred by PostgreSQL.
        # Instead of specifying type oids, it's recommended to simply add
        # explicit casts in the query to ensure that the right type is used.
        # 
        # For example: "SELECT $1::int"
        # 
        # PostgreSQL bind parameters are represented as $1, $1, $2, etc.,
        # inside the SQL query.
        def send_prepare(p1, p2, p3 = v3)
            #This is a stub, used for indexing
        end
        # conn.send_query_prepared( statement_name [, params, result_format ] )
        # -> nil
        #  
        # Execute prepared named statement specified by _statement_name_
        # asynchronously, and returns immediately.
        # On failure, it raises a PG::Error.
        # 
        # +params+ is an array of the optional bind parameters for the
        # SQL query. Each element of the +params+ array may be either:
        #   a hash of the form:
        #     {:value  => String (value of bind parameter)
        #      :format => Fixnum (0 for text, 1 for binary)
        #     }
        #   or, it may be a String. If it is a string, that is equivalent to the hash:
        #     { :value => <string value>, :format => 0 }
        # 
        # PostgreSQL bind parameters are represented as $1, $1, $2, etc.,
        # inside the SQL query. The 0th element of the +params+ array is bound
        # to $1, the 1st element is bound to $2, etc. +nil+ is treated as +NULL+.
        # 
        # The optional +result_format+ should be 0 for text results, 1
        # for binary.
        def send_query_prepared(p1, p2 = v2, p3 = v3)
            #This is a stub, used for indexing
        end
        # conn.send_describe_prepared( statement_name ) -> nil
        #  
        # Asynchronously send _command_ to the server. Does not block.
        # Use in combination with +conn.get_result+.
        def send_describe_prepared( statement_name )
            #This is a stub, used for indexing
        end
        # conn.send_describe_portal( portal_name ) -> nil
        #  
        # Asynchronously send _command_ to the server. Does not block.
        # Use in combination with +conn.get_result+.
        def send_describe_portal( portal_name )
            #This is a stub, used for indexing
        end
        # conn.get_result() -> PG::Result
        # conn.get_result() {|pg_result| block }
        #  
        # Blocks waiting for the next result from a call to
        # #send_query (or another asynchronous command), and returns
        # it. Returns +nil+ if no more results are available.
        # 
        # Note: call this function repeatedly until it returns +nil+, or else
        # you will not be able to issue further commands.
        # 
        # If the optional code block is given, it will be passed <i>result</i> as an argument,
        # and the PG::Result object will  automatically be cleared when the block terminates.
        # In this instance, <code>conn.exec</code> returns the value of the block.
        def get_result(*several_variants)
            #This is a stub, used for indexing
        end
        # conn.consume_input()
        #  
        # If input is available from the server, consume it.
        # After calling +consume_input+, you can check +is_busy+
        # or *notifies* to see if the state has changed.
        def consume_input()
            #This is a stub, used for indexing
        end
        # conn.is_busy() -> Boolean
        #  
        # Returns +true+ if a command is busy, that is, if
        # PQgetResult would block. Otherwise returns +false+.
        def is_busy()
            #This is a stub, used for indexing
        end
        # conn.setnonblocking(Boolean) -> nil
        #  
        # Sets the nonblocking status of the connection.
        # In the blocking state, calls to #send_query
        # will block until the message is sent to the server,
        # but will not wait for the query results.
        # In the nonblocking state, calls to #send_query
        # will return an error if the socket is not ready for
        # writing.
        # Note: This function does not affect #exec, because
        # that function doesn't return until the server has
        # processed the query and returned the results.
        # Returns +nil+.
        def setnonblocking(p1)
            #This is a stub, used for indexing
        end
        # conn.isnonblocking() -> Boolean
        #  
        # Returns +true+ if a command is busy, that is, if
        # PQgetResult would block. Otherwise returns +false+.
        def isnonblocking()
            #This is a stub, used for indexing
        end
        alias nonblocking? isnonblocking
        # conn.flush() -> Boolean
        #  
        # Attempts to flush any queued output data to the server.
        # Returns +true+ if data is successfully flushed, +false+
        # if not (can only return +false+ if connection is
        # nonblocking.
        # Raises PG::Error if some other failure occurred.
        def flush()
            #This is a stub, used for indexing
        end
        # conn.cancel() -> String
        #  
        # Requests cancellation of the command currently being
        # processed. (Only implemented in PostgreSQL >= 8.0)
        # 
        # Returns +nil+ on success, or a string containing the
        # error message if a failure occurs.
        def cancel()
            #This is a stub, used for indexing
        end
        # conn.notifies()
        #  
        # Returns a hash of the unprocessed notifications.
        # If there is no unprocessed notifier, it returns +nil+.
        def notifies()
            #This is a stub, used for indexing
        end
        # conn.put_copy_data( buffer ) -> Boolean
        #  
        # Transmits _buffer_ as copy data to the server.
        # Returns true if the data was sent, false if it was
        # not sent (false is only possible if the connection
        # is in nonblocking mode, and this command would block).
        # 
        # Raises an exception if an error occurs.
        # 
        # See also #copy_data.
        def put_copy_data( buffer )
            #This is a stub, used for indexing
        end
        # conn.put_copy_end( [ error_message ] ) -> Boolean
        #  
        # Sends end-of-data indication to the server.
        # 
        # _error_message_ is an optional parameter, and if set,
        # forces the COPY command to fail with the string
        # _error_message_.
        # 
        # Returns true if the end-of-data was sent, false if it was
        # not sent (false is only possible if the connection
        # is in nonblocking mode, and this command would block).
        def put_copy_end( * error_message  )
            #This is a stub, used for indexing
        end
        # conn.get_copy_data( [ async = false ] ) -> String
        #  
        # Return a string containing one row of data, +nil+
        # if the copy is done, or +false+ if the call would
        # block (only possible if _async_ is true).
        # 
        # See also #copy_data.
        def get_copy_data(p1 = v1)
            #This is a stub, used for indexing
        end
        # conn.set_error_verbosity( verbosity ) -> Fixnum
        #  
        # Sets connection's verbosity to _verbosity_ and returns
        # the previous setting. Available settings are:
        # * PQERRORS_TERSE
        # * PQERRORS_DEFAULT
        # * PQERRORS_VERBOSE
        def set_error_verbosity( verbosity )
            #This is a stub, used for indexing
        end
        # conn.trace( stream ) -> nil
        #  
        # Enables tracing message passing between backend. The
        # trace message will be written to the stream _stream_,
        # which must implement a method +fileno+ that returns
        # a writable file descriptor.
        def trace( stream )
            #This is a stub, used for indexing
        end
        # conn.untrace() -> nil
        #  
        # Disables the message tracing.
        def untrace()
            #This is a stub, used for indexing
        end
        # conn.set_notice_receiver {|result| ... } -> Proc
        #  
        # Notice and warning messages generated by the server are not returned
        # by the query execution functions, since they do not imply failure of
        # the query. Instead they are passed to a notice handling function, and
        # execution continues normally after the handler returns. The default
        # notice handling function prints the message on <tt>stderr</tt>, but the
        # application can override this behavior by supplying its own handling
        # function.
        # 
        # For historical reasons, there are two levels of notice handling, called the
        # notice receiver and notice processor. The default behavior is for the notice
        # receiver to format the notice and pass a string to the notice processor for
        # printing. However, an application that chooses to provide its own notice
        # receiver will typically ignore the notice processor layer and just do all
        # the work in the notice receiver.
        # 
        # This function takes a new block to act as the handler, which should
        # accept a single parameter that will be a PG::Result object, and returns
        # the Proc object previously set, or +nil+ if it was previously the default.
        # 
        # If you pass no arguments, it will reset the handler to the default.
        # 
        # *Note:* The +result+ passed to the block should not be used outside
        # of the block, since the corresponding C object could be freed after the
        # block finishes.
        def set_notice_receiver()
            #This is a stub, used for indexing
        end
        # conn.set_notice_processor {|message| ... } -> Proc
        #  
        # See #set_notice_receiver for the desription of what this and the
        # notice_processor methods do.
        # 
        # This function takes a new block to act as the notice processor and returns
        # the Proc object previously set, or +nil+ if it was previously the default.
        # The block should accept a single String object.
        # 
        # If you pass no arguments, it will reset the handler to the default.
        def set_notice_processor()
            #This is a stub, used for indexing
        end
        # conn.get_client_encoding() -> String
        #  
        # Returns the client encoding as a String.
        def get_client_encoding()
            #This is a stub, used for indexing
        end
        # conn.set_client_encoding( encoding )
        #  
        # Sets the client encoding to the _encoding_ String.
        def set_client_encoding( encoding )
            #This is a stub, used for indexing
        end
        alias client_encoding= set_client_encoding
        # conn.transaction { |conn| ... } -> result of the block
        #  
        # Executes a +BEGIN+ at the start of the block,
        # and a +COMMIT+ at the end of the block, or
        # +ROLLBACK+ if any exception occurs.
        def transaction()
            #This is a stub, used for indexing
        end
        # conn.block( [ timeout ] ) -> Boolean
        #  
        # Blocks until the server is no longer busy, or until the
        # optional _timeout_ is reached, whichever comes first.
        # _timeout_ is measured in seconds and can be fractional.
        # 
        # Returns +false+ if _timeout_ is reached, +true+ otherwise.
        # 
        # If +true+ is returned, +conn.is_busy+ will return +false+
        # and +conn.get_result+ will not block.
        def block( * timeout  )
            #This is a stub, used for indexing
        end
        # conn.wait_for_notify( [ timeout ] ) -> String
        # conn.wait_for_notify( [ timeout ] ) { |event, pid| block }
        # conn.wait_for_notify( [ timeout ] ) { |event, pid, payload| block } # PostgreSQL 9.0
        #  
        # Blocks while waiting for notification(s), or until the optional
        # _timeout_ is reached, whichever comes first.  _timeout_ is
        # measured in seconds and can be fractional.
        # 
        # Returns +nil+ if _timeout_ is reached, the name of the NOTIFY
        # event otherwise.  If used in block form, passes the name of the
        # NOTIFY +event+ and the generating +pid+ into the block.
        # 
        # Under PostgreSQL 9.0 and later, if the notification is sent with
        # the optional +payload+ string, it will be given to the block as the
        # third argument.
        def wait_for_notify(*several_variants)
            #This is a stub, used for indexing
        end
        alias notifies_wait wait_for_notify
        # PG::Connection.quote_ident( str ) -> String
        # conn.quote_ident( str ) -> String
        #  
        # Returns a string that is safe for inclusion in a SQL query as an
        # identifier. Note: this is not a quote function for values, but for
        # identifiers.
        # 
        # For example, in a typical SQL query: <tt>SELECT FOO FROM MYTABLE</tt>
        # The identifier <tt>FOO</tt> is folded to lower case, so it actually
        # means <tt>foo</tt>. If you really want to access the case-sensitive
        # field name <tt>FOO</tt>, use this function like
        # <tt>PG::Connection.quote_ident('FOO')</tt>, which will return <tt>"FOO"</tt>
        # (with double-quotes). PostgreSQL will see the double-quotes, and
        # it will not fold to lower case.
        # 
        # Similarly, this function also protects against special characters,
        # and other things that might allow SQL injection if the identifier
        # comes from an untrusted source.
        def quote_ident(*several_variants)
            #This is a stub, used for indexing
        end
        # conn.async_exec(sql [, params, result_format ] ) -> PG::Result
        # conn.async_exec(sql [, params, result_format ] ) {|pg_result| block }
        #  
        # This function has the same behavior as #exec,
        # but is implemented using the asynchronous command
        # processing API of libpq.
        def async_exec(*several_variants)
            #This is a stub, used for indexing
        end
        alias async_query async_exec
        # conn.get_last_result( ) -> PG::Result
        #  
        # This function retrieves all available results
        # on the current connection (from previously issued
        # asynchronous commands like +send_query()+) and
        # returns the last non-NULL result, or +nil+ if no
        # results are available.
        # 
        # This function is similar to #get_result
        # except that it is designed to get one and only
        # one result.
        def get_last_result( )
            #This is a stub, used for indexing
        end
        # conn.lo_creat( [mode] ) -> Fixnum
        #  
        # Creates a large object with mode _mode_. Returns a large object Oid.
        # On failure, it raises PG::Error.
        def lo_creat( *mode )
            #This is a stub, used for indexing
        end
        alias locreat lo_creat
        # conn.lo_create( oid ) -> Fixnum
        #  
        # Creates a large object with oid _oid_. Returns the large object Oid.
        # On failure, it raises PG::Error.
        def lo_create( oid )
            #This is a stub, used for indexing
        end
        alias locreate lo_create
        # conn.lo_import(file) -> Fixnum
        #  
        # Import a file to a large object. Returns a large object Oid.
        # 
        # On failure, it raises a PG::Error.
        def lo_import(file)
            #This is a stub, used for indexing
        end
        alias loimport lo_import
        # conn.lo_export( oid, file ) -> nil
        #  
        # Saves a large object of _oid_ to a _file_.
        def lo_export( oid, file )
            #This is a stub, used for indexing
        end
        alias loexport lo_export
        # conn.lo_open( oid, [mode] ) -> Fixnum
        #  
        # Open a large object of _oid_. Returns a large object descriptor
        # instance on success. The _mode_ argument specifies the mode for
        # the opened large object,which is either +INV_READ+, or +INV_WRITE+.
        # 
        # If _mode_ is omitted, the default is +INV_READ+.
        def lo_open( oid, *mode )
            #This is a stub, used for indexing
        end
        alias loopen lo_open
        # conn.lo_write( lo_desc, buffer ) -> Fixnum
        #  
        # Writes the string _buffer_ to the large object _lo_desc_.
        # Returns the number of bytes written.
        def lo_write( lo_desc, buffer )
            #This is a stub, used for indexing
        end
        alias lowrite lo_write
        # conn.lo_read( lo_desc, len ) -> String
        #  
        # Attempts to read _len_ bytes from large object _lo_desc_,
        # returns resulting data.
        def lo_read( lo_desc, len )
            #This is a stub, used for indexing
        end
        alias loread lo_read
        # conn.lo_lseek( lo_desc, offset, whence ) -> Fixnum
        #  
        # Move the large object pointer _lo_desc_ to offset _offset_.
        # Valid values for _whence_ are +SEEK_SET+, +SEEK_CUR+, and +SEEK_END+.
        # (Or 0, 1, or 2.)
        def lo_lseek( lo_desc, offset, whence )
            #This is a stub, used for indexing
        end
        alias lolseek lo_lseek
        alias lo_seek lo_lseek
        alias loseek lo_lseek
        # conn.lo_tell( lo_desc ) -> Fixnum
        #  
        # Returns the current position of the large object _lo_desc_.
        def lo_tell( lo_desc )
            #This is a stub, used for indexing
        end
        alias lotell lo_tell
        # conn.lo_truncate( lo_desc, len ) -> nil
        #  
        # Truncates the large object _lo_desc_ to size _len_.
        def lo_truncate( lo_desc, len )
            #This is a stub, used for indexing
        end
        alias lotruncate lo_truncate
        # conn.lo_close( lo_desc ) -> nil
        #  
        # Closes the postgres large object of _lo_desc_.
        def lo_close( lo_desc )
            #This is a stub, used for indexing
        end
        alias loclose lo_close
        # conn.lo_unlink( oid ) -> nil
        #  
        # Unlinks (deletes) the postgres large object of _oid_.
        def lo_unlink( oid )
            #This is a stub, used for indexing
        end
        alias lounlink lo_unlink
        # conn.internal_encoding -> Encoding
        #  
        # defined in Ruby 1.9 or later.
        # 
        # Returns:
        # * an Encoding - client_encoding of the connection as a Ruby Encoding object.
        # * nil - the client_encoding is 'SQL_ASCII'
        def internal_encoding()
            #This is a stub, used for indexing
        end
        # conn.internal_encoding = value
        #  
        # A wrapper of #set_client_encoding.
        # defined in Ruby 1.9 or later.
        # 
        # +value+ can be one of:
        # * an Encoding
        # * a String - a name of Encoding
        # * +nil+ - sets the client_encoding to SQL_ASCII.
        def internal_encoding= value
            #This is a stub, used for indexing
        end
        # conn.external_encoding() -> Encoding
        #  
        # Return the +server_encoding+ of the connected database as a Ruby Encoding object.
        # The <tt>SQL_ASCII</tt> encoding is mapped to to <tt>ASCII_8BIT</tt>.
        def external_encoding()
            #This is a stub, used for indexing
        end
        # conn.set_default_encoding() -> Encoding
        #  
        # If Ruby has its Encoding.default_internal set, set PostgreSQL's client_encoding
        # to match. Returns the new Encoding, or +nil+ if the default internal encoding
        # wasn't set.
        def set_default_encoding()
            #This is a stub, used for indexing
        end
        def close()
            #This is a stub, used for indexing
        end
        def query(*args)
            #This is a stub, used for indexing
        end
        def escape(p1)
            #This is a stub, used for indexing
        end
        def nonblocking?()
            #This is a stub, used for indexing
        end
        def client_encoding=(p1)
            #This is a stub, used for indexing
        end
        def notifies_wait(p1 = v1)
            #This is a stub, used for indexing
        end
        def async_query(*args)
            #This is a stub, used for indexing
        end
        def locreat(p1 = v1)
            #This is a stub, used for indexing
        end
        def locreate(p1)
            #This is a stub, used for indexing
        end
        def loimport(p1)
            #This is a stub, used for indexing
        end
        def loexport(p1, p2)
            #This is a stub, used for indexing
        end
        def loopen(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        def lowrite(p1, p2)
            #This is a stub, used for indexing
        end
        def loread(p1, p2)
            #This is a stub, used for indexing
        end
        def lolseek(p1, p2, p3)
            #This is a stub, used for indexing
        end
        def lo_seek(p1, p2, p3)
            #This is a stub, used for indexing
        end
        def loseek(p1, p2, p3)
            #This is a stub, used for indexing
        end
        def lotell(p1)
            #This is a stub, used for indexing
        end
        def lotruncate(p1, p2)
            #This is a stub, used for indexing
        end
        def loclose(p1)
            #This is a stub, used for indexing
        end
        def lounlink(p1)
            #This is a stub, used for indexing
        end
    end
    require 'rb_e_p_gerror '
    class ConnectionBad < rb_ePGerror 
    end
    module Constants
        # Connection succeeded   
        CONNECTION_OK = nil #value is unknown, used for indexing.
        # Connection failed   
        CONNECTION_BAD = nil #value is unknown, used for indexing.
        # Waiting for connection to be made.   
        CONNECTION_STARTED = nil #value is unknown, used for indexing.
        # Connection OK; waiting to send.   
        CONNECTION_MADE = nil #value is unknown, used for indexing.
        # Waiting for a response from the server.   
        CONNECTION_AWAITING_RESPONSE = nil #value is unknown, used for indexing.
        # Received authentication; waiting for backend start-up to ﬁnish.   
        CONNECTION_AUTH_OK = nil #value is unknown, used for indexing.
        # Negotiating SSL encryption.   
        CONNECTION_SSL_STARTUP = nil #value is unknown, used for indexing.
        # Negotiating environment-driven parameter settings.   
        CONNECTION_SETENV = nil #value is unknown, used for indexing.
        # connect() needed.   
        CONNECTION_NEEDED = nil #value is unknown, used for indexing.
        # Async connection is waiting to read   
        PGRES_POLLING_READING = nil #value is unknown, used for indexing.
        # Async connection is waiting to write   
        PGRES_POLLING_WRITING = nil #value is unknown, used for indexing.
        # Async connection failed or was reset   
        PGRES_POLLING_FAILED = nil #value is unknown, used for indexing.
        # Async connection succeeded   
        PGRES_POLLING_OK = nil #value is unknown, used for indexing.
        # Transaction is currently idle (#transaction_status)   
        PQTRANS_IDLE = nil #value is unknown, used for indexing.
        # Transaction is currently active; query has been sent to the server, but not yet completed. (#transaction_status)   
        PQTRANS_ACTIVE = nil #value is unknown, used for indexing.
        # Transaction is currently idle, in a valid transaction block (#transaction_status)   
        PQTRANS_INTRANS = nil #value is unknown, used for indexing.
        # Transaction is currently idle, in a failed transaction block (#transaction_status)   
        PQTRANS_INERROR = nil #value is unknown, used for indexing.
        # Transaction's connection is bad (#transaction_status)   
        PQTRANS_UNKNOWN = nil #value is unknown, used for indexing.
        # Terse error verbosity level (#set_error_verbosity)   
        PQERRORS_TERSE = nil #value is unknown, used for indexing.
        # Default error verbosity level (#set_error_verbosity)   
        PQERRORS_DEFAULT = nil #value is unknown, used for indexing.
        # Verbose error verbosity level (#set_error_verbosity)   
        PQERRORS_VERBOSE = nil #value is unknown, used for indexing.
        # Server is accepting connections.   
        PQPING_OK = nil #value is unknown, used for indexing.
        # Server is alive but rejecting connections.   
        PQPING_REJECT = nil #value is unknown, used for indexing.
        # Could not establish connection.   
        PQPING_NO_RESPONSE = nil #value is unknown, used for indexing.
        # Connection not attempted (bad params).   
        PQPING_NO_ATTEMPT = nil #value is unknown, used for indexing.
        # Flag for #lo_creat, #lo_open -- open for writing   
        INV_WRITE = nil #value is unknown, used for indexing.
        # Flag for #lo_creat, #lo_open -- open for reading   
        INV_READ = nil #value is unknown, used for indexing.
        # Flag for #lo_lseek -- seek from object start   
        SEEK_SET = nil #value is unknown, used for indexing.
        # Flag for #lo_lseek -- seek from current position   
        SEEK_CUR = nil #value is unknown, used for indexing.
        # Flag for #lo_lseek -- seek from object end   
        SEEK_END = nil #value is unknown, used for indexing.
        # The string sent to the server was empty.   
        PGRES_EMPTY_QUERY = nil #value is unknown, used for indexing.
        # Successful completion of a command returning no data.   
        PGRES_COMMAND_OK = nil #value is unknown, used for indexing.
        #         Successful completion of a command returning data
        # (such as a SELECT or SHOW).   
        PGRES_TUPLES_OK = nil #value is unknown, used for indexing.
        # Copy Out (from server) data transfer started.   
        PGRES_COPY_OUT = nil #value is unknown, used for indexing.
        # Copy In (to server) data transfer started.   
        PGRES_COPY_IN = nil #value is unknown, used for indexing.
        # The server’s response was not understood.   
        PGRES_BAD_RESPONSE = nil #value is unknown, used for indexing.
        # A nonfatal error (a notice or warning) occurred.   
        PGRES_NONFATAL_ERROR = nil #value is unknown, used for indexing.
        # A fatal error occurred.   
        PGRES_FATAL_ERROR = nil #value is unknown, used for indexing.
        PGRES_COPY_BOTH = nil #value is unknown, used for indexing.
        PGRES_SINGLE_TUPLE = nil #value is unknown, used for indexing.
        # The severity; the field contents
        # are ERROR, FATAL, or PANIC (in an error message), or WARNING, NOTICE,
        # DEBUG, INFO, or LOG (in a notice message), or a localized translation
        # of one of these. Always present.
        PG_DIAG_SEVERITY = nil #value is unknown, used for indexing.
        # The SQLSTATE code for the
        # error. The SQLSTATE code identies the type of error that has occurred;
        # it can be used by front-end applications to perform specic operations
        # (such as er- ror handling) in response to a particular database
        # error. For a list of the possible SQLSTATE codes, see Appendix A.
        # This eld is not localizable, and is always present.
        PG_DIAG_SQLSTATE = nil #value is unknown, used for indexing.
        # The primary human-readable
        # error message (typically one line). Always present.   
        PG_DIAG_MESSAGE_PRIMARY = nil #value is unknown, used for indexing.
        # an optional secondary
        # error message carrying more detail about the problem. Might run to
        # multiple lines.
        PG_DIAG_MESSAGE_DETAIL = nil #value is unknown, used for indexing.
        # an optional suggestion
        # what to do about the problem. This is intended to differ from detail
        # in that it offers advice (potentially inappropriate) rather than
        # hard facts. Might run to multiple lines.
        PG_DIAG_MESSAGE_HINT = nil #value is unknown, used for indexing.
        # A string containing a decimal
        # integer indicating an error cursor position as an index into the
        # original statement string. The rst character has index 1, and
        # positions are measured in characters not bytes.
        PG_DIAG_STATEMENT_POSITION = nil #value is unknown, used for indexing.
        # This is dened the same as
        # the PG_DIAG_STATEMENT_POSITION eld, but it is used when the cursor
        # position refers to an internally generated command rather than the
        # one submitted by the client. The PG_DIAG_INTERNAL_QUERY eld will
        # always appear when this eld appears.
        PG_DIAG_INTERNAL_POSITION = nil #value is unknown, used for indexing.
        # The text of a failed
        # internally-generated command. This could be, for example, a SQL
        # query issued by a PL/pgSQL function.
        PG_DIAG_INTERNAL_QUERY = nil #value is unknown, used for indexing.
        # An indication of the context
        # in which the error occurred. Presently this includes a call stack
        # traceback of active procedural language functions and internally-generated
        # queries. The trace is one entry per line, most recent rst.
        PG_DIAG_CONTEXT = nil #value is unknown, used for indexing.
        # The le name of the source-code
        # location where the error was reported.   
        PG_DIAG_SOURCE_FILE = nil #value is unknown, used for indexing.
        # The line number of the
        # source-code location where the error was reported.   
        PG_DIAG_SOURCE_LINE = nil #value is unknown, used for indexing.
        # The name of the source-code
        # function reporting the error.   
        PG_DIAG_SOURCE_FUNCTION = nil #value is unknown, used for indexing.
        # If the error was associated with a
        # specific database object, the name of the schema containing that object, if any.   
        PG_DIAG_SCHEMA_NAME = nil #value is unknown, used for indexing.
        #  If the error was associated with a
        # specific table, the name of the table. (When this field is present, the schema name
        #  field provides the name of the table's schema.)   
        PG_DIAG_TABLE_NAME = nil #value is unknown, used for indexing.
        # If the error was associated with a
        # specific table column, the name of the column. (When this field is present, the
        # schema and table name fields identify the table.)   
        PG_DIAG_COLUMN_NAME = nil #value is unknown, used for indexing.
        # If the error was associated with a
        # specific datatype, the name of the datatype. (When this field is present, the
        # schema name field provides the name of the datatype's schema.)   
        PG_DIAG_DATATYPE_NAME = nil #value is unknown, used for indexing.
        # If the error was associated with a
        # specific constraint, the name of the constraint. The table or domain that the
        # constraint belongs to is reported using the fields listed above. (For this
        # purpose, indexes are treated as constraints, even if they weren't created with
        # constraint syntax.)   
        PG_DIAG_CONSTRAINT_NAME = nil #value is unknown, used for indexing.
        # Invalid OID constant   
        INVALID_OID = nil #value is unknown, used for indexing.
        InvalidOid = nil #value is unknown, used for indexing.
    end
    require 'rb_e_standard_error '
    class Error < rb_eStandardError 
    end
    # The class to represent the query result tuples (rows).
    # An instance of this class is created as the result of every query.
    # You may need to invoke the #clear method of the instance when finished with
    # the result for better memory performance.
    # 
    # Example:
    #    require 'pg'
    #    conn = PGconn.open(:dbname => 'test')
    #    res  = conn.exec('SELECT 1 AS a, 2 AS b, NULL AS c')
    #    res.getvalue(0,0) # '1'
    #    res[0]['b']       # '2'
    #    res[0]['c']       # nil
    class Result < rb_cObject 
        include Enumerable
        include rb_mPGconstants
        # res.result_status() -> Fixnum
        #  
        # Returns the status of the query. The status value is one of:
        # * +PGRES_EMPTY_QUERY+
        # * +PGRES_COMMAND_OK+
        # * +PGRES_TUPLES_OK+
        # * +PGRES_COPY_OUT+
        # * +PGRES_COPY_IN+
        # * +PGRES_BAD_RESPONSE+
        # * +PGRES_NONFATAL_ERROR+
        # * +PGRES_FATAL_ERROR+
        # * +PGRES_COPY_BOTH+
        def result_status()
            #This is a stub, used for indexing
        end
        # res.res_status( status ) -> String
        #  
        # Returns the string representation of status +status+.
        def res_status( status )
            #This is a stub, used for indexing
        end
        # res.error_message() -> String
        #  
        # Returns the error message of the command as a string.
        def error_message()
            #This is a stub, used for indexing
        end
        alias result_error_message error_message
        # res.error_field(fieldcode) -> String
        #  
        # Returns the individual field of an error.
        # 
        # +fieldcode+ is one of:
        # * +PG_DIAG_SEVERITY+
        # * +PG_DIAG_SQLSTATE+
        # * +PG_DIAG_MESSAGE_PRIMARY+
        # * +PG_DIAG_MESSAGE_DETAIL+
        # * +PG_DIAG_MESSAGE_HINT+
        # * +PG_DIAG_STATEMENT_POSITION+
        # * +PG_DIAG_INTERNAL_POSITION+
        # * +PG_DIAG_INTERNAL_QUERY+
        # * +PG_DIAG_CONTEXT+
        # * +PG_DIAG_SOURCE_FILE+
        # * +PG_DIAG_SOURCE_LINE+
        # * +PG_DIAG_SOURCE_FUNCTION+
        # 
        # An example:
        # 
        #   begin
        #       conn.exec( "SELECT * FROM nonexistant_table" )
        #   rescue PG::Error => err
        #       p [
        #           err.result.error_field( PG::Result::PG_DIAG_SEVERITY ),
        #           err.result.error_field( PG::Result::PG_DIAG_SQLSTATE ),
        #           err.result.error_field( PG::Result::PG_DIAG_MESSAGE_PRIMARY ),
        #           err.result.error_field( PG::Result::PG_DIAG_MESSAGE_DETAIL ),
        #           err.result.error_field( PG::Result::PG_DIAG_MESSAGE_HINT ),
        #           err.result.error_field( PG::Result::PG_DIAG_STATEMENT_POSITION ),
        #           err.result.error_field( PG::Result::PG_DIAG_INTERNAL_POSITION ),
        #           err.result.error_field( PG::Result::PG_DIAG_INTERNAL_QUERY ),
        #           err.result.error_field( PG::Result::PG_DIAG_CONTEXT ),
        #           err.result.error_field( PG::Result::PG_DIAG_SOURCE_FILE ),
        #           err.result.error_field( PG::Result::PG_DIAG_SOURCE_LINE ),
        #           err.result.error_field( PG::Result::PG_DIAG_SOURCE_FUNCTION ),
        #       ]
        #   end
        # 
        # Outputs:
        # 
        #   ["ERROR", "42P01", "relation \"nonexistant_table\" does not exist", nil, nil,
        #    "15", nil, nil, nil, "path/to/parse_relation.c", "857", "parserOpenTable"]
        def error_field(fieldcode)
            #This is a stub, used for indexing
        end
        alias result_error_field error_field
        # res.clear() -> nil
        #  
        # Clears the PG::Result object as the result of the query.
        def clear()
            #This is a stub, used for indexing
        end
        # res.check -> nil
        #  
        # Raises appropriate exception if PG::Result is in a bad state.
        def check()
            #This is a stub, used for indexing
        end
        alias check_result check
        # res.ntuples() -> Fixnum
        #  
        # Returns the number of tuples in the query result.
        def ntuples()
            #This is a stub, used for indexing
        end
        alias num_tuples ntuples
        # res.nfields() -> Fixnum
        #  
        # Returns the number of columns in the query result.
        def nfields()
            #This is a stub, used for indexing
        end
        alias num_fields nfields
        # res.fname( index ) -> String
        #  
        # Returns the name of the column corresponding to _index_.
        def fname( index )
            #This is a stub, used for indexing
        end
        # res.fnumber( name ) -> Fixnum
        #  
        # Returns the index of the field specified by the string +name+.
        # The given +name+ is treated like an identifier in an SQL command, that is,
        # it is downcased unless double-quoted. For example, given a query result
        # generated from the SQL command:
        # 
        #   result = conn.exec( %{SELECT 1 AS FOO, 2 AS "BAR"} )
        # 
        # we would have the results:
        # 
        #   result.fname( 0 )            # => "foo"
        #   result.fname( 1 )            # => "BAR"
        #   result.fnumber( "FOO" )      # => 0
        #   result.fnumber( "foo" )      # => 0
        #   result.fnumber( "BAR" )      # => ArgumentError
        #   result.fnumber( %{"BAR"} )   # => 1
        # 
        # Raises an ArgumentError if the specified +name+ isn't one of the field names;
        # raises a TypeError if +name+ is not a String.
        def fnumber( name )
            #This is a stub, used for indexing
        end
        # res.ftable( column_number ) -> Fixnum
        #  
        # Returns the Oid of the table from which the column _column_number_
        # was fetched.
        # 
        # Raises ArgumentError if _column_number_ is out of range or if
        # the Oid is undefined for that column.
        def ftable( column_number )
            #This is a stub, used for indexing
        end
        # res.ftablecol( column_number ) -> Fixnum
        #  
        # Returns the column number (within its table) of the table from
        # which the column _column_number_ is made up.
        # 
        # Raises ArgumentError if _column_number_ is out of range or if
        # the column number from its table is undefined for that column.
        def ftablecol( column_number )
            #This is a stub, used for indexing
        end
        # res.fformat( column_number ) -> Fixnum
        #  
        # Returns the format (0 for text, 1 for binary) of column
        # _column_number_.
        # 
        # Raises ArgumentError if _column_number_ is out of range.
        def fformat( column_number )
            #This is a stub, used for indexing
        end
        # res.ftype( column_number )
        #  
        # Returns the data type associated with _column_number_.
        # 
        # The integer returned is the internal +OID+ number (in PostgreSQL)
        # of the type. To get a human-readable value for the type, use the
        # returned OID and the field's #fmod value with the format_type() SQL
        # function:
        # 
        #   # Get the type of the second column of the result 'res'
        #   typename = conn.
        #     exec( "SELECT format_type($1,$2)", [res.ftype(1), res.fmod(1)] ).
        #     getvalue( 0, 0 )
        # 
        # Raises an ArgumentError if _column_number_ is out of range.
        def ftype( column_number )
            #This is a stub, used for indexing
        end
        # res.fmod( column_number )
        #  
        # Returns the type modifier associated with column _column_number_. See
        # the #ftype method for an example of how to use this.
        # 
        # Raises an ArgumentError if _column_number_ is out of range.
        def fmod( column_number )
            #This is a stub, used for indexing
        end
        # res.fsize( index )
        #  
        # Returns the size of the field type in bytes.  Returns <tt>-1</tt> if the field is variable sized.
        # 
        #   res = conn.exec("SELECT myInt, myVarChar50 FROM foo")
        #   res.size(0) => 4
        #   res.size(1) => -1
        def fsize( index )
            #This is a stub, used for indexing
        end
        # res.getvalue( tup_num, field_num )
        #  
        # Returns the value in tuple number _tup_num_, field _field_num_,
        # or +nil+ if the field is +NULL+.
        def getvalue( tup_num, field_num )
            #This is a stub, used for indexing
        end
        # res.getisnull(tuple_position, field_position) -> boolean
        #  
        # Returns +true+ if the specified value is +nil+; +false+ otherwise.
        def getisnull(tuple_position, field_position)
            #This is a stub, used for indexing
        end
        # res.getlength( tup_num, field_num ) -> Fixnum
        #  
        # Returns the (String) length of the field in bytes.
        # 
        # Equivalent to <tt>res.value(<i>tup_num</i>,<i>field_num</i>).length</tt>.
        def getlength( tup_num, field_num )
            #This is a stub, used for indexing
        end
        # res.nparams() -> Fixnum
        #  
        # Returns the number of parameters of a prepared statement.
        # Only useful for the result returned by conn.describePrepared
        def nparams()
            #This is a stub, used for indexing
        end
        # res.paramtype( param_number ) -> Oid
        #  
        # Returns the Oid of the data type of parameter _param_number_.
        # Only useful for the result returned by conn.describePrepared
        def paramtype( param_number )
            #This is a stub, used for indexing
        end
        # res.cmd_status() -> String
        #  
        # Returns the status string of the last query command.
        def cmd_status()
            #This is a stub, used for indexing
        end
        # res.cmd_tuples() -> Fixnum
        #  
        # Returns the number of tuples (rows) affected by the SQL command.
        # 
        # If the SQL command that generated the PG::Result was not one of:
        # * +INSERT+
        # * +UPDATE+
        # * +DELETE+
        # * +MOVE+
        # * +FETCH+
        # or if no tuples were affected, <tt>0</tt> is returned.
        def cmd_tuples()
            #This is a stub, used for indexing
        end
        alias cmdtuples cmd_tuples
        # res.oid_value() -> Fixnum
        #  
        # Returns the +oid+ of the inserted row if applicable,
        # otherwise +nil+.
        def oid_value()
            #This is a stub, used for indexing
        end
        # res[ n ] -> Hash
        #  
        # Returns tuple _n_ as a hash.
        def [] n
            #This is a stub, used for indexing
        end
        # res.each{ |tuple| ... }
        #  
        # Invokes block for each tuple in the result set.
        def each()
            #This is a stub, used for indexing
        end
        # res.fields() -> Array
        #  
        # Returns an array of Strings representing the names of the fields in the result.
        def fields()
            #This is a stub, used for indexing
        end
        # res.each_row { |row| ... }
        #  
        # Yields each row of the result. The row is a list of column values.
        def each_row()
            #This is a stub, used for indexing
        end
        # res.column_values( n )   -> array
        #  
        # Returns an Array of the values from the nth column of each
        # tuple in the result.
        def column_values( n )
            #This is a stub, used for indexing
        end
        # res.field_values( field )   -> array
        #  
        # Returns an Array of the values from the given _field_ of each tuple in the result.
        def field_values( field )
            #This is a stub, used for indexing
        end
        def result_error_message()
            #This is a stub, used for indexing
        end
        def result_error_field(p1)
            #This is a stub, used for indexing
        end
        def check_result()
            #This is a stub, used for indexing
        end
        def num_tuples()
            #This is a stub, used for indexing
        end
        def num_fields()
            #This is a stub, used for indexing
        end
        def cmdtuples()
            #This is a stub, used for indexing
        end
    end
    class ServerError < rb_ePGerror 
    end
    class UnableToSend < rb_ePGerror 
    end
end
