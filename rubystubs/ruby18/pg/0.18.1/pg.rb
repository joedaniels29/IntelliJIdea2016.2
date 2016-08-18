=begin
 This is a machine generated stub using stdlib-doc for <b>module PG</b>
 Sources used:  gem pg, v. 0.18.1
 Created on 2015-01-12 13:38:01 -0500 by IntelliJ Ruby Stubs Generator.
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
    # PG.init_openssl(do_ssl, do_crypto)  -> nil
    #  
    # Allows applications to select which security libraries to initialize.
    # 
    # If your application initializes libssl and/or libcrypto libraries and libpq is
    # built with SSL support, you should call PG.init_openssl() to tell libpq that the
    # libssl and/or libcrypto libraries have been initialized by your application,
    # so that libpq will not also initialize those libraries. See
    # http://h71000.www7.hp.com/doc/83final/BA554_90007/ch04.html for details on the SSL API.
    # 
    # When do_ssl is +true+, libpq will initialize the OpenSSL library before first
    # opening a database connection. When do_crypto is +true+, the libcrypto library
    # will be initialized. By default (if PG.init_openssl() is not called), both libraries
    # are initialized. When SSL support is not compiled in, this function is present but does nothing.
    # 
    # If your application uses and initializes either OpenSSL or its underlying libcrypto library,
    # you must call this function with +false+ for the appropriate parameter(s) before first opening
    # a database connection. Also be sure that you have done that initialization before opening a
    # database connection.
    def self.init_openssl(do_ssl, do_crypto)
        #This is a stub, used for indexing
    end
    # PG.init_ssl(do_ssl)  -> nil
    #  
    # Allows applications to select which security libraries to initialize.
    # 
    # This function is equivalent to <tt>PG.init_openssl(do_ssl, do_ssl)</tt> . It is sufficient for
    # applications that initialize both or neither of OpenSSL and libcrypto.
    def self.init_ssl(do_ssl)
        #This is a stub, used for indexing
    end
    module BinaryDecoder
        # This is a decoder class for conversion of PostgreSQL binary bool type
        # to Ruby true or false objects.
        class Boolean < SimpleDecoder
        end
        # This decoder class delivers the data received from the server as binary String object.
        # It is therefore suitable for conversion of PostgreSQL bytea data as well as any other
        # data in binary format.
        class Bytea < SimpleDecoder
        end
        # This is a decoder class for conversion of PostgreSQL binary float4 and float8 types
        # to Ruby Float objects.
        class Float < SimpleDecoder
        end
        # This is a decoder class for conversion of PostgreSQL binary int2, int4 and int8 types
        # to Ruby Integer objects.
        class Integer < SimpleDecoder
        end
        # This is a decoder class for conversion of PostgreSQL text output to
        # to Ruby String object. The output value will have the character encoding
        # set with PG::Connection#internal_encoding= .
        class String < SimpleDecoder
        end
        # This is a decoder class for conversion of binary (bytea) to base64 data.
        class ToBase64 < CompositeDecoder
        end
    end
    module BinaryEncoder
        # This is the encoder class for the PostgreSQL boolean type.
        # 
        # It accepts true and false. Other values will raise an exception.
        class Boolean < SimpleEncoder
        end
        require 'rb_c_pg_simple_encoder '
        class Bytea < rb_cPG_SimpleEncoder 
        end
        # This is an encoder class for conversion of base64 encoded data
        # to it's binary representation.
        class FromBase64 < CompositeEncoder
        end
        # This is the encoder class for the PostgreSQL int2 type.
        # 
        # Non-Number values are expected to have method +to_i+ defined.
        class Int2 < SimpleEncoder
        end
        class Int4 < rb_cPG_SimpleEncoder 
        end
        class Int8 < rb_cPG_SimpleEncoder 
        end
        class String < rb_cPG_SimpleEncoder 
        end
    end
    # This is the base class for all type cast encoder and decoder classes.
    # 
    # It can be used for implicit type casts by a PG::TypeMap or to
    # convert single values to/from their string representation by #encode
    # and #decode.
    # 
    # Ruby +nil+ values are not handled by encoders, but are always transmitted
    # as SQL +NULL+ value. Vice versa SQL +NULL+ values are not handled by decoders,
    # but are always returned as a +nil+ value.
    class Coder
        # coder.oid = Integer
        #  
        # Specifies the type OID that is sent alongside with an encoded
        # query parameter value.
        # 
        # The default is +0+.
        def oid=(p1)
            #This is a stub, used for indexing
        end
        # coder.oid -> Integer
        #  
        # The type OID that is sent alongside with an encoded
        # query parameter value.
        def oid()
            #This is a stub, used for indexing
        end
        # coder.format = Integer
        #  
        # Specifies the format code that is sent alongside with an encoded
        # query parameter value.
        # 
        # The default is +0+.
        def format=(p1)
            #This is a stub, used for indexing
        end
        # coder.format -> Integer
        #  
        # The format code that is sent alongside with an encoded
        # query parameter value.
        def format()
            #This is a stub, used for indexing
        end
        # coder.encode( value )
        #  
        # Encodes the given Ruby object into string representation, without
        # sending data to/from the database server.
        # 
        # A nil value is passed through.
        def encode( value )
            #This is a stub, used for indexing
        end
        # coder.decode( string, tuple=nil, field=nil )
        #  
        # Decodes the given string representation into a Ruby object, without
        # sending data to/from the database server.
        # 
        # A nil value is passed through and non String values are expected to have
        # #to_str defined.
        def decode( string, tuple=nil, field=nil )
            #This is a stub, used for indexing
        end
    end
    # This is the base class for all type cast classes of PostgreSQL types,
    # that are made up of some sub type.
    class CompositeCoder < Coder
        # coder.elements_type = coder
        #  
        # Specifies the PG::Coder object that is used to encode or decode
        # the single elementes of this composite type.
        # 
        # If set to +nil+ all values are encoded and decoded as String objects.
        def elements_type= coder
            #This is a stub, used for indexing
        end
        # coder.needs_quotation = Boolean
        #  
        # Specifies whether the assigned #elements_type requires quotation marks to
        # be transferred safely. Encoding with #needs_quotation=false is somewhat
        # faster.
        # 
        # The default is +true+. This option is ignored for decoding of values.
        def needs_quotation=(p1)
            #This is a stub, used for indexing
        end
        # coder.needs_quotation -> Boolean
        #  
        # Specifies whether the assigned #elements_type requires quotation marks to
        # be transferred safely.
        def needs_quotation?()
            #This is a stub, used for indexing
        end
        # coder.delimiter = String
        #  
        # Specifies the character that separates values within the composite type.
        # The default is a comma.
        # This must be a single one-byte character.
        def delimiter=(p1)
            #This is a stub, used for indexing
        end
        # coder.delimiter -> String
        #  
        # The character that separates values within the composite type.
        def delimiter()
            #This is a stub, used for indexing
        end
    end
    class CompositeDecoder < CompositeCoder
    end
    class CompositeEncoder < CompositeCoder
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
        # conn.hostaddr()
        #  
        # Returns the server numeric IP address of the connection.
        def hostaddr()
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
        # conn.conninfo   -> hash
        #  
        # Returns the connection options used by a live connection.
        def conninfo()
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
        # conn.exec_params(sql, params[, result_format[, type_map]] ) -> PG::Result
        # conn.exec_params(sql, params[, result_format[, type_map]] ) {|pg_result| block }
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
        # type_map can be a PG::TypeMap derivation (such as PG::BasicTypeMapForQueries).
        # This will type cast the params form various Ruby types before transmission
        # based on the encoders defined by the type map. When a type encoder is used
        # the format and oid of a given bind parameter are retrieved from the encoder
        # instead out of the hash form described above.
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
        # conn.exec_prepared(statement_name [, params, result_format[, type_map]] ) -> PG::Result
        # conn.exec_prepared(statement_name [, params, result_format[, type_map]] ) {|pg_result| block }
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
        # type_map can be a PG::TypeMap derivation (such as PG::BasicTypeMapForQueries).
        # This will type cast the params form various Ruby types before transmission
        # based on the encoders defined by the type map. When a type encoder is used
        # the format and oid of a given bind parameter are retrieved from the encoder
        # instead out of the hash form described above.
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
        # Result#result_status of PGRES_SINGLE_TUPLE. The last Result has
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
        # conn.send_query(sql [, params, result_format[, type_map ]] ) -> nil
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
        # 
        # type_map can be a PG::TypeMap derivation (such as PG::BasicTypeMapForQueries).
        # This will type cast the params form various Ruby types before transmission
        # based on the encoders defined by the type map. When a type encoder is used
        # the format and oid of a given bind parameter are retrieved from the encoder
        # instead out of the hash form described above.
        def send_query(p1, p2 = v2, p3 = v3, p4 = v4)
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
        # conn.send_query_prepared( statement_name [, params, result_format[, type_map ]] )
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
        # 
        # type_map can be a PG::TypeMap derivation (such as PG::BasicTypeMapForQueries).
        # This will type cast the params form various Ruby types before transmission
        # based on the encoders defined by the type map. When a type encoder is used
        # the format and oid of a given bind parameter are retrieved from the encoder
        # instead out of the hash form described above.
        def send_query_prepared(p1, p2 = v2, p3 = v3, p4 = v4)
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
        # conn.put_copy_data( buffer [, encoder] ) -> Boolean
        #  
        # Transmits _buffer_ as copy data to the server.
        # Returns true if the data was sent, false if it was
        # not sent (false is only possible if the connection
        # is in nonblocking mode, and this command would block).
        # 
        # encoder can be a PG::Coder derivation (typically PG::TextEncoder::CopyRow).
        # This encodes the received data fields from an Array of Strings. Optionally
        # the encoder can type cast the fields form various Ruby types in one step,
        # if PG::TextEncoder::CopyRow#type_map is set accordingly.
        # 
        # Raises an exception if an error occurs.
        # 
        # See also #copy_data.
        def put_copy_data(p1, p2 = v2)
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
        # conn.get_copy_data( [ async = false [, decoder = nil ]] ) -> String
        #  
        # Return a string containing one row of data, +nil+
        # if the copy is done, or +false+ if the call would
        # block (only possible if _async_ is true).
        # 
        # decoder can be a PG::Coder derivation (typically PG::TextDecoder::CopyRow).
        # This decodes the received data fields as Array of Strings. Optionally
        # the decoder can type cast the fields to various Ruby types in one step,
        # if PG::TextDecoder::CopyRow#type_map is set accordingly.
        # 
        # See also #copy_data.
        def get_copy_data(p1 = v1, p2 = v2)
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
        # res.type_map_for_queries = typemap
        #  
        # Set the default TypeMap that is used for type casts of query bind parameters.
        # 
        # +typemap+ must be a kind of PG::TypeMap .
        def type_map_for_queries= typemap
            #This is a stub, used for indexing
        end
        # res.type_map_for_queries -> TypeMap
        #  
        # Returns the default TypeMap that is currently set for type casts of query
        # bind parameters.
        def type_map_for_queries()
            #This is a stub, used for indexing
        end
        # res.type_map_for_results = typemap
        #  
        # Set the default TypeMap that is used for type casts of result values.
        # 
        # +typemap+ must be a kind of PG::TypeMap .
        def type_map_for_results= typemap
            #This is a stub, used for indexing
        end
        # res.type_map_for_results -> TypeMap
        #  
        # Returns the default TypeMap that is currently set for type casts of result values.
        def type_map_for_results()
            #This is a stub, used for indexing
        end
        # res.encoder_for_put_copy_data = encoder
        #  
        # Set the default coder that is used for type casting of parameters
        # to #put_copy_data .
        # 
        # +encoder+ can be:
        # * a kind of PG::Coder
        # * +nil+ - disable type encoding, data must be a String.
        def encoder_for_put_copy_data= encoder
            #This is a stub, used for indexing
        end
        # res.encoder_for_put_copy_data -> PG::Coder
        #  
        # Returns the default coder object that is currently set for type casting of parameters
        # to #put_copy_data .
        # 
        # Returns either:
        # * a kind of PG::Coder
        # * +nil+ - type encoding is disabled, returned data will be a String.
        def encoder_for_put_copy_data()
            #This is a stub, used for indexing
        end
        # res.decoder_for_get_copy_data = decoder
        #  
        # Set the default coder that is used for type casting of received data
        # by #get_copy_data .
        # 
        # +decoder+ can be:
        # * a kind of PG::Coder
        # * +nil+ - disable type decoding, returned data will be a String.
        def decoder_for_get_copy_data= decoder
            #This is a stub, used for indexing
        end
        # res.decoder_for_get_copy_data -> PG::Coder
        #  
        # Returns the default coder object that is currently set for type casting of received
        # data by #get_copy_data .
        # 
        # Returns either:
        # * a kind of PG::Coder
        # * +nil+ - type encoding is disabled, returned data will be a String.
        def decoder_for_get_copy_data()
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
    # This is the base class for all type cast classes for COPY data,
    class CopyCoder < Coder
        # coder.type_map = map
        #  
        # +map+ must be a kind of PG::TypeMap .
        # 
        # Defaults to a PG::TypeMapAllStrings , so that PG::TextEncoder::String respectively
        # PG::TextDecoder::String is used for encoding/decoding of all columns.
        def type_map= map
            #This is a stub, used for indexing
        end
        # coder.type_map -> PG::TypeMap
        #  
        def type_map()
            #This is a stub, used for indexing
        end
        # coder.delimiter = String
        #  
        # Specifies the character that separates columns within each row (line) of the file.
        # The default is a tab character in text format, a comma in CSV format.
        # This must be a single one-byte character. This option is ignored when using binary format.
        def delimiter=(p1)
            #This is a stub, used for indexing
        end
        # coder.delimiter -> String
        #  
        # The character that separates columns within each row (line) of the file.
        def delimiter()
            #This is a stub, used for indexing
        end
        # Specifies the string that represents a null value. The default is \\N (backslash-N)
        # in text format, and an unquoted empty string in CSV format. You might prefer an
        # empty string even in text format for cases where you don't want to distinguish nulls
        # from empty strings. This option is ignored when using binary format.
        def null_string=(p1)
            #This is a stub, used for indexing
        end
        # The string that represents a null value.
        def null_string()
            #This is a stub, used for indexing
        end
    end
    class CopyDecoder < CopyCoder
    end
    class CopyEncoder < CopyCoder
    end
    require 'rb_e_standard_error '
    class Error < rb_eStandardError 
    end
    class InvalidChangeOfResultFields < rb_ePGerror 
    end
    class InvalidResultStatus < rb_ePGerror 
    end
    class NoResultError < rb_ePGerror 
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
        # 
        # If PG::Result#autoclear? is true then the result is marked as cleared
        # and the underlying C struct will be cleared automatically by libpq.
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
        # res.nfields() -> Integer
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
        # res.ftable( column_number ) -> Integer
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
        # res.ftype( column_number )  -> Integer
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
        # res.cmd_tuples() -> Integer
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
        # res.oid_value() -> Integer
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
        # res.values -> Array
        #  
        # Returns all tuples as an array of arrays.
        def values()
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
        # res.cleared?      -> boolean
        #  
        # Returns +true+ if the backend result memory has been free'd.
        def cleared?()
            #This is a stub, used for indexing
        end
        # res.autoclear?      -> boolean
        #  
        # Returns +true+ if the underlying C struct will be cleared automatically by libpq.
        # Elsewise the result is cleared by PG::Result#clear or by the GC when it's no longer in use.
        def autoclear?()
            #This is a stub, used for indexing
        end
        # res.type_map = typemap
        #  
        # Set the TypeMap that is used for type casts of result values to ruby objects.
        # 
        # All value retrieval methods will respect the type map and will do the
        # type casts from PostgreSQL's wire format to Ruby objects on the fly,
        # according to the rules and decoders defined in the given typemap.
        # 
        # +typemap+ must be a kind of PG::TypeMap .
        def type_map= typemap
            #This is a stub, used for indexing
        end
        # res.type_map -> value
        #  
        # Returns the TypeMap that is currently set for type casts of result values to ruby objects.
        def type_map()
            #This is a stub, used for indexing
        end
        # res.stream_each{ |tuple| ... }
        #  
        # Invokes block for each tuple in the result set in single row mode.
        # 
        # This is a convenience method for retrieving all result tuples
        # as they are transferred. It is an alternative to repeated calls of
        # PG::Connection#get_result , but given that it avoids the overhead of
        # wrapping each row into a dedicated result object, it delivers data in nearly
        # the same speed as with ordinary results.
        # 
        # The result must be in status PGRES_SINGLE_TUPLE.
        # It iterates over all tuples until the status changes to PGRES_TUPLES_OK.
        # A PG::Error is raised for any errors from the server.
        # 
        # Row description data does not change while the iteration. All value retrieval
        # methods refer to only the current row. Result#ntuples returns +1+ while
        # the iteration and +0+ after all tuples were yielded.
        # 
        # Example:
        #   conn.send_query( "first SQL query; second SQL query" )
        #   conn.set_single_row_mode
        #   conn.get_result.stream_each do |row|
        #     # do something with the received row of the first query
        #   end
        #   conn.get_result.stream_each do |row|
        #     # do something with the received row of the second query
        #   end
        #   conn.get_result  # => nil   (no more results)
        def stream_each()
            #This is a stub, used for indexing
        end
        # res.stream_each_row { |row| ... }
        #  
        # Yields each row of the result set in single row mode.
        # The row is a list of column values.
        # 
        # This method works equally to #stream_each , but yields an Array of
        # values.
        def stream_each_row()
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
    class SimpleCoder < Coder
    end
    class SimpleDecoder < SimpleCoder
    end
    class SimpleEncoder < SimpleCoder
    end
    module TextDecoder
        # This is the decoder class for PostgreSQL array types.
        # 
        # All values are decoded according to the #elements_type
        # accessor. Sub-arrays are decoded recursively.
        class Array < CompositeDecoder
        end
        # This is a decoder class for conversion of PostgreSQL boolean type
        # to Ruby true or false values.
        class Boolean < SimpleDecoder
        end
        # This is a decoder class for conversion of PostgreSQL bytea type
        # to binary String objects.
        class Bytea < SimpleDecoder
        end
        # This class decodes one row of arbitrary columns received as COPY data in text format.
        # See the {COPY command}[http://www.postgresql.org/docs/current/static/sql-copy.html]
        # for description of the format.
        # 
        # It is intended to be used in conjunction with PG::Connection#get_copy_data .
        # 
        # The columns are retrieved as Array of values. The single values are decoded as defined
        # in the assigned #type_map. If no type_map was assigned, all values are converted to
        # strings by PG::TextDecoder::String.
        # 
        # Example with default type map ( TypeMapAllStrings ):
        #   deco = PG::TextDecoder::CopyRow.new
        #   conn.copy_data "COPY my_table TO STDOUT", deco do
        #     while row=conn.get_copy_data
        #       p row
        #     end
        #   end
        # This prints all rows of +my_table+ to stdout:
        #   ["astring", "7", "f"]
        #   ["string2", "42", "t"]
        class CopyRow < CopyDecoder
        end
        # This is a decoder class for conversion of PostgreSQL float4 and float8 types
        # to Ruby Float objects.
        class Float < SimpleDecoder
        end
        # This is a decoder class for conversion of base64 encoded data
        # to it's binary representation. It outputs a binary Ruby String
        # or some other Ruby object, if a #elements_type decoder was defined.
        class FromBase64 < CompositeDecoder
        end
        # This is the decoder class for PostgreSQL identifiers.
        # 
        # Returns an Array of identifiers:
        #   PG::TextDecoder::Identifier.new.decode('schema."table"."column"')
        #      => ["schema", "table", "column"]
        class Identifier < CompositeDecoder
        end
        # This is a decoder class for conversion of PostgreSQL integer types
        # to Ruby Integer objects.
        class Integer < SimpleDecoder
        end
        # This is a decoder class for conversion of PostgreSQL text output to
        # to Ruby String object. The output value will have the character encoding
        # set with PG::Connection#internal_encoding= .
        class String < SimpleDecoder
        end
    end
    module TextEncoder
        # This is the encoder class for PostgreSQL array types.
        # 
        # All values are encoded according to the #elements_type
        # accessor. Sub-arrays are encoded recursively.
        # 
        # This encoder expects an Array of values or sub-arrays as input.
        # Other values are passed through as text without interpretation.
        class Array < CompositeEncoder
        end
        # This is the encoder class for the PostgreSQL bool type.
        # 
        # Ruby value false is encoded as SQL +FALSE+ value.
        # Ruby value true is encoded as SQL +TRUE+ value.
        # Any other value is sent as it's string representation.
        class Boolean < SimpleEncoder
        end
        # This is an encoder class for the PostgreSQL bytea type for server version 9.0
        # or newer.
        # 
        # The binary String is converted to hexadecimal representation for transmission
        # in text format. For query bind parameters it is recommended to use
        # PG::BinaryEncoder::Bytea instead, in order to decrease network traffic and
        # CPU usage.
        class Bytea < SimpleEncoder
        end
        # This class encodes one row of arbitrary columns for transmission as COPY data in text format.
        # See the {COPY command}[http://www.postgresql.org/docs/current/static/sql-copy.html]
        # for description of the format.
        # 
        # It is intended to be used in conjunction with PG::Connection#put_copy_data .
        # 
        # The columns are expected as Array of values. The single values are encoded as defined
        # in the assigned #type_map. If no type_map was assigned, all values are converted to
        # strings by PG::TextEncoder::String.
        # 
        # Example with default type map ( TypeMapAllStrings ):
        #   conn.exec "create table my_table (a text,b int,c bool)"
        #   enco = PG::TextEncoder::CopyRow.new
        #   conn.copy_data "COPY my_table FROM STDIN", enco do
        #     conn.put_copy_data ["astring", 7, false]
        #     conn.put_copy_data ["string2", 42, true]
        #   end
        # This creates +my_table+ and inserts two rows.
        class CopyRow < CopyEncoder
        end
        # This is the encoder class for the PostgreSQL float types.
        class Float < SimpleEncoder
        end
        # This is the encoder class for PostgreSQL identifiers.
        # 
        # An Array value can be used for "schema.table.column" type identifiers:
        #   PG::TextEncoder::Identifier.new.encode(['schema', 'table', 'column'])
        #      => "schema"."table"."column"
        class Identifier < CompositeEncoder
        end
        # This is the encoder class for the PostgreSQL int types.
        # 
        # Non-Integer values are expected to have method +to_i+ defined.
        class Integer < SimpleEncoder
        end
        # This is the encoder class for PostgreSQL literals.
        # 
        # A literal is quoted and escaped by the +'+ character.
        class QuotedLiteral < CompositeEncoder
        end
        # This is the encoder class for the PostgreSQL text types.
        # 
        # Non-String values are expected to have method +to_s+ defined.
        class String < SimpleEncoder
        end
        # This is an encoder class for conversion of binary to base64 data.
        class ToBase64 < CompositeEncoder
        end
    end
    # This is the base class for type maps.
    # See derived classes for implementations of different type cast strategies
    # ( PG::TypeMapByColumn, PG::TypeMapByOid ).
    class TypeMap
        module DefaultTypeMappable
        end
    end
    # This type map casts all values received from the database server to Strings
    # and sends all values to the server after conversion to String by +#to_s+ .
    # That means, it is hard coded to PG::TextEncoder::String for value encoding
    # and to PG::TextDecoder::String for text format respectivly PG::BinaryDecoder::Bytea
    # for binary format received from the server.
    # 
    # It is suitable for type casting query bind parameters, result values and
    # COPY IN/OUT data.
    # 
    # This is the default type map for each PG::Connection .
    class TypeMapAllStrings < TypeMap
    end
    require 'rb_m_default_type_mappable'
    # This type map casts values based on the class or the ancestors of the given value
    # to be sent.
    # 
    # This type map is usable for type casting query bind parameters and COPY data
    # for PG::Connection#put_copy_data . Therefore only encoders might be assigned by
    # the #[]= method.
    class TypeMapByClass < TypeMap
        include rb_mDefaultTypeMappable
        # typemap.[class] = coder
        #  
        # Assigns a new PG::Coder object to the type map. The encoder
        # is chosen for all values that are a kind of the given +class+ .
        # 
        # +coder+ can be one of the following:
        # * +nil+        - Values are forwarded to the #default_type_map .
        # * a PG::Coder  - Values are encoded by the given encoder
        # * a Symbol     - The method of this type map (or a derivation) that is called for each value to sent.
        #   It must return a PG::Coder or +nil+ .
        # * a Proc       - The Proc object is called for each value. It must return a PG::Coder or +nil+ .
        def []=(p1, p2)
            #This is a stub, used for indexing
        end
        # typemap.[class] -> coder
        #  
        # Returns the encoder object for the given +class+
        def [](p1)
            #This is a stub, used for indexing
        end
        # typemap.coders -> Hash
        #  
        # Returns all classes and their assigned encoder object.
        def coders()
            #This is a stub, used for indexing
        end
    end
    # This type map casts values by a coder assigned per field/column.
    # 
    # Each PG:TypeMapByColumn has a fixed list of either encoders or decoders,
    # that is defined at #new . A type map with encoders is usable for type casting
    # query bind parameters and COPY data for PG::Connection#put_copy_data .
    # A type map with decoders is usable for type casting of result values and
    # COPY data from PG::Connection#get_copy_data .
    # 
    # PG::TypeMapByColumns are in particular useful in conjunction with prepared statements,
    # since they can be cached alongside with the statement handle.
    # 
    # This type map strategy is also used internally by PG::TypeMapByOid, when the
    # number of rows of a result set exceeds a given limit.
    class TypeMapByColumn < TypeMap
        include rb_mDefaultTypeMappable
        # PG::TypeMapByColumn.new( coders )
        #  
        # Builds a new type map and assigns a list of coders for the given column.
        # +coders+ must be an Array of PG::Coder objects or +nil+ values.
        # The length of the Array corresponds to
        # the number of columns or bind parameters this type map is usable for.
        # 
        # A +nil+ value will forward the given field to the #default_type_map .
        def self.new( coders )
            #This is a stub, used for indexing
        end
        # typemap.coders -> Array
        #  
        # Array of PG::Coder objects. The length of the Array corresponds to
        # the number of columns or bind parameters this type map is usable for.
        def coders()
            #This is a stub, used for indexing
        end
    end
    # This type map casts values based on the Ruby object type code of the given value
    # to be sent.
    # 
    # This type map is usable for type casting query bind parameters and COPY data
    # for PG::Connection#put_copy_data . Therefore only encoders might be assigned by
    # the #[]= method.
    # 
    # _Note_ : This type map is not portable across Ruby implementations and is less flexible
    # than PG::TypeMapByClass.
    # It is kept only for performance comparisons, but PG::TypeMapByClass proved to be equally
    # fast in almost all cases.
    class TypeMapByMriType < TypeMap
        include rb_mDefaultTypeMappable
        # typemap.[mri_type] = coder
        #  
        # Assigns a new PG::Coder object to the type map. The encoder
        # is registered for type casts of the given +mri_type+ .
        # 
        # +coder+ can be one of the following:
        # * +nil+        - Values are forwarded to the #default_type_map .
        # * a PG::Coder  - Values are encoded by the given encoder
        # * a Symbol     - The method of this type map (or a derivation) that is called for each value to sent.
        #   It must return a PG::Coder.
        # * a Proc       - The Proc object is called for each value. It must return a PG::Coder.
        # 
        # +mri_type+ must be one of the following strings:
        # * +T_FIXNUM+
        # * +T_TRUE+
        # * +T_FALSE+
        # * +T_FLOAT+
        # * +T_BIGNUM+
        # * +T_COMPLEX+
        # * +T_RATIONAL+
        # * +T_ARRAY+
        # * +T_STRING+
        # * +T_SYMBOL+
        # * +T_OBJECT+
        # * +T_CLASS+
        # * +T_MODULE+
        # * +T_REGEXP+
        # * +T_HASH+
        # * +T_STRUCT+
        # * +T_FILE+
        # * +T_DATA+
        def []=(p1, p2)
            #This is a stub, used for indexing
        end
        # typemap.[mri_type] -> coder
        #  
        # Returns the encoder object for the given +mri_type+
        # 
        # See #[]= for allowed +mri_type+ .
        def [](p1)
            #This is a stub, used for indexing
        end
        # typemap.coders -> Hash
        #  
        # Returns all mri types and their assigned encoder object.
        def coders()
            #This is a stub, used for indexing
        end
    end
    # This type map casts values based on the type OID of the given column
    # in the result set.
    # 
    # This type map is only suitable to cast values from PG::Result objects.
    # Therefore only decoders might be assigned by the #add_coder method.
    # 
    # Fields with no match to any of the registered type OID / format combination
    # are forwarded to the #default_type_map .
    class TypeMapByOid < TypeMap
        include rb_mDefaultTypeMappable
        # typemap.add_coder( coder )
        #  
        # Assigns a new PG::Coder object to the type map. The decoder
        # is registered for type casts based on it's PG::Coder#oid and
        # PG::Coder#format attributes.
        # 
        # Later changes of the oid or format code within the coder object
        # will have no effect to the type map.
        def add_coder( coder )
            #This is a stub, used for indexing
        end
        # typemap.rm_coder( format, oid )
        #  
        # Removes a PG::Coder object from the type map based on the given
        # oid and format codes.
        # 
        # Returns the removed coder object.
        def rm_coder( format, oid )
            #This is a stub, used for indexing
        end
        # typemap.coders -> Array
        #  
        # Array of all assigned PG::Coder objects.
        def coders()
            #This is a stub, used for indexing
        end
        # typemap.max_rows_for_online_lookup = number
        #  
        # Threshold for doing Hash lookups versus creation of a dedicated PG::TypeMapByColumn.
        # The type map will do Hash lookups for each result value, if the number of rows
        # is below or equal +number+.
        def max_rows_for_online_lookup= number
            #This is a stub, used for indexing
        end
        # typemap.max_rows_for_online_lookup -> Integer
        #  
        def max_rows_for_online_lookup()
            #This is a stub, used for indexing
        end
        # typemap.build_column_map( result )
        #  
        # This builds a PG::TypeMapByColumn that fits to the given PG::Result object
        # based on it's type OIDs.
        def build_column_map( result )
            #This is a stub, used for indexing
        end
    end
    # This class can be used to implement a type map in ruby, typically as a
    # #default_type_map in a type map chain.
    # 
    # This API is EXPERIMENTAL and could change in the future.
    class TypeMapInRuby < TypeMap
        include PG::TypeMap::DefaultTypeMappable
        # typemap.fit_to_result( result )
        #  
        # Check that the type map fits to the result.
        # 
        # This method is called, when a type map is assigned to a result.
        # It must return a PG::TypeMap object or raise an Exception.
        # This can be +self+ or some other type map that fits to the result.
        def fit_to_result( result )
            #This is a stub, used for indexing
        end
        # typemap.fit_to_query( params )
        #  
        # Check that the type map fits to the given user values.
        # 
        # This method is called, when a type map is used for sending a query
        # and for encoding of copy data, before the value is casted.
        def fit_to_query( params )
            #This is a stub, used for indexing
        end
        # typemap.fit_to_copy_get()
        #  
        # Check that the type map can be used for PG::Connection#get_copy_data.
        # 
        # This method is called, when a type map is used for decoding copy data,
        # before the value is casted.
        def fit_to_copy_get()
            #This is a stub, used for indexing
        end
        # typemap.typecast_result_value( result, tuple, field )
        #  
        # Retrieve and cast a field of the given result.
        # 
        # This method implementation uses the #default_type_map to get the
        # field value. It can be derived to change this behaviour.
        # 
        # Parameters:
        # * +result+ : The PG::Result received from the database.
        # * +tuple+ : The row number to retrieve.
        # * +field+ : The column number to retrieve.
        # 
        # Note: Calling any value retrieving methods of +result+ will result
        # in an (endless) recursion. Instead super() can be used to retrieve
        # the value using the default_typemap.
        def typecast_result_value( result, tuple, field )
            #This is a stub, used for indexing
        end
        # typemap.typecast_query_param( param_value, field )
        #  
        # Cast a field string for transmission to the server.
        # 
        # This method implementation uses the #default_type_map to cast param_value.
        # It can be derived to change this behaviour.
        # 
        # Parameters:
        # * +param_value+ : The value from the user.
        # * +field+ : The field number from left to right.
        def typecast_query_param( param_value, field )
            #This is a stub, used for indexing
        end
        # typemap.typecast_copy_get( field_str, fieldno, format, encoding )
        #  
        # Cast a field string received by PG::Connection#get_copy_data.
        # 
        # This method implementation uses the #default_type_map to cast field_str.
        # It can be derived to change this behaviour.
        # 
        # Parameters:
        # * +field_str+ : The String received from the server.
        # * +fieldno+ : The field number from left to right.
        # * +format+ : The format code (0 = text, 1 = binary)
        # * +encoding+ : The encoding of the connection and encoding the returned
        #   value should get.
        def typecast_copy_get( field_str, fieldno, format, encoding )
            #This is a stub, used for indexing
        end
    end
    class UnableToSend < rb_ePGerror 
    end
end
