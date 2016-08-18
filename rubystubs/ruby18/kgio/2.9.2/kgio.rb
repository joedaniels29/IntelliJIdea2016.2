=begin
 This is a machine generated stub using stdlib-doc for <b>module Kgio</b>
 Sources used:  gem kgio, v. 2.9.2
 Created on 2014-04-10 18:47:58 -0400 by IntelliJ Ruby Stubs Generator.
=end

module Kgio
    # Maps to the SOCK_NONBLOCK constant in Linux for setting
    # the non-blocking flag on newly accepted sockets.  This is
    # usually unnecessary as sockets are made non-blocking
    # whenever non-blocking methods are used.
    SOCK_NONBLOCK = nil #value is unknown, used for indexing.
    # Maps to the SOCK_CLOEXEC constant in Linux for setting
    # the close-on-exec flag on newly accepted descriptors.  This
    # is enabled by default, and there is usually no reason to
    # disable close-on-exec for accepted sockets.
    SOCK_CLOEXEC = nil #value is unknown, used for indexing.
    TCP_FASTOPEN = nil #value is unknown, used for indexing.
    MSG_FASTOPEN = nil #value is unknown, used for indexing.
    # 
    # Kgio.accept_cloexec? -> true or false
    #  
    # Returns true if newly accepted Kgio::Sockets are created with the
    # FD_CLOEXEC file descriptor flag, false if not.
    # 
    # Deprecated, use the per-socket flags for kgio_*accept instead.
    def self.accept_cloexec?()
        #This is a stub, used for indexing
    end
    # 
    # Kgio.accept_cloexec = true
    # Kgio.accept_cloexec = false
    #  
    # Sets whether or not Kgio::Socket objects created by
    # TCPServer#kgio_accept,
    # TCPServer#kgio_tryaccept,
    # UNIXServer#kgio_accept,
    # and UNIXServer#kgio_tryaccept
    # default to being created with the FD_CLOEXEC file descriptor flag.
    # 
    # This is on by default, as there is little reason to deal to enable
    # it for client sockets on a socket server.
    # 
    # Deprecated, use the per-socket flags for kgio_*accept instead.
    def self.accept_cloexec=(*several_variants)
        #This is a stub, used for indexing
    end
    # 
    # Kgio.accept_nonblock? -> true or false
    #  
    # Returns true if newly accepted Kgio::Sockets are created with the
    # O_NONBLOCK file status flag, false if not.
    # 
    # Deprecated, use the per-socket flags for kgio_*accept instead.
    def self.accept_nonblock?()
        #This is a stub, used for indexing
    end
    # 
    # Kgio.accept_nonblock = true
    # Kgio.accept_nonblock = false
    #  
    # Sets whether or not Kgio::Socket objects created by
    # TCPServer#kgio_accept,
    # TCPServer#kgio_tryaccept,
    # UNIXServer#kgio_accept,
    # and UNIXServer#kgio_tryaccept
    # are created with the O_NONBLOCK file status flag.
    # 
    # This defaults to +false+ for GNU/Linux where MSG_DONTWAIT is
    # available (and on newer GNU/Linux, accept4() may also set
    # the non-blocking flag.  This defaults to +true+ on non-GNU/Linux
    # systems.
    # 
    # This is always true on Ruby implementations using user-space threads.
    # 
    # Deprecated, use the per-socket flags for kgio_*accept instead.
    def self.accept_nonblock=(*several_variants)
        #This is a stub, used for indexing
    end
    # Sets the default class for newly accepted sockets.  This is
    # legacy behavior, kgio_accept and kgio_tryaccept now take optional
    # class arguments to override this value.
    def self.accept_class=(p1)
        #This is a stub, used for indexing
    end
    # Returns the default class for newly accepted sockets when kgio_accept
    # or kgio_tryaccept are not passed arguments
    def self.accept_class()
        #This is a stub, used for indexing
    end
    # Kgio.autopush? -> true or false
    #  
    # Returns whether or not autopush is enabled.
    # 
    # Only available on systems with TCP_CORK (Linux) or
    # TCP_NOPUSH (FreeBSD, and maybe other *BSDs).
    def self.autopush?()
        #This is a stub, used for indexing
    end
    # Kgio.autopush = true
    # Kgio.autopush = false
    #  
    # Enables or disables autopush for sockets created with kgio_accept
    # and kgio_tryaccept methods.  Autopush relies on TCP_CORK/TCP_NOPUSH
    # being enabled on the listen socket.
    # 
    # Only available on systems with TCP_CORK (Linux) or
    # TCP_NOPUSH (FreeBSD, and maybe other *BSDs).
    def self.autopush=(*several_variants)
        #This is a stub, used for indexing
    end
    # 
    # Kgio.poll({ $stdin => :wait_readable }, 100)  -> hash or nil
    # Kgio.poll({ $stdin => Kgio::POLLIN }, 100)  -> hash or nil
    #  
    # Accepts an input hash with IO objects to wait for as the key and
    # the events to wait for as its value.  The events may either be
    # +:wait_readable+ or +:wait_writable+ symbols or a Fixnum mask of
    # Kgio::POLL* constants:
    # 
    #      Kgio::POLLIN      - there is data to read
    #      Kgio::POLLPRI     - there is urgent data to read
    #      Kgio::POLLOUT     - writing will not block
    #      Kgio::POLLRDHUP   - peer has shutdown writes (Linux 2.6.17+ only)
    # 
    # Timeout is specified in Integer milliseconds just like the underlying
    # poll(2), not in seconds like IO.select.  A nil timeout means to wait
    # forever.  It must be an Integer or nil.
    # 
    # Kgio.poll modifies and returns its input hash on success with the
    # IO-like object as the key and an Integer mask of events as the hash
    # value.  It can return any of the events specified in the input
    # above, along with the following events:
    # 
    #      Kgio::POLLERR     - error condition occurred on the descriptor
    #      Kgio::POLLHUP     - hang up
    #      Kgio::POLLNVAL    - invalid request (bad file descriptor)
    # 
    # This method is only available under Ruby 1.9 or any other
    # implementations that uses native threads and rb_thread_blocking_region()
    def self.poll(*several_variants)
        #This is a stub, used for indexing
    end
    # This module contains default kgio_wait_readable and
    # kgio_wait_writable methods that block indefinitely (in a
    # thread-safe manner) until an IO object is read or writable.
    # This module is included in the Kgio::PipeMethods and
    # Kgio::SocketMethods modules used by all bundled IO-derived
    # objects.
    module DefaultWaiters
        # 
        # io.kgio_wait_readable           -> IO
        # io.kgio_wait_readable(timeout)  -> IO or nil
        #  
        # Blocks the running Thread indefinitely until the IO object is readable
        # or if +timeout+ expires.  If +timeout+ is specified and expires, +nil+
        # is returned.
        # 
        # This method is automatically called (without timeout argument) by default
        # whenever kgio_read needs to block on input.
        # 
        # Users of alternative threading/fiber libraries are
        # encouraged to override this method in their subclasses or modules to
        # work with their threading/blocking methods.
        def kgio_wait_readable(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # io.kgio_wait_writable           -> IO
        # io.kgio_wait_writable(timeout)  -> IO or nil
        #  
        # Blocks the running Thread indefinitely until the IO object is writable
        # or if +timeout+ expires.  If +timeout+ is specified and expires, +nil+
        # is returned.
        # 
        # This method is automatically called (without timeout argument) by default
        # whenever kgio_write needs to block on output.
        # 
        # Users of alternative threading/fiber libraries are
        # encouraged to override this method in their subclasses or modules to
        # work with their threading/blocking methods.
        def kgio_wait_writable(*several_variants)
            #This is a stub, used for indexing
        end
    end
    require 'm_pipe_methods'
    # This subclass of the core File class adds the "tryopen" singleton
    # method for opening files.  A single "tryopen" and check for the
    # return value may be used to avoid unnecessary stat(2) syscalls
    # or File.open exceptions when checking for the existence of a file
    # and opening it.
    class File < File
        include mPipeMethods
        # 
        # Kgio::File.tryopen(filename, [, mode [, perm]])      -> Kgio::File or Symbol
        #  
        # Returns a Kgio::File object on a successful open.  +filename+ is a
        # path to any file on the filesystem.  If specified, +mode+ is a bitmask
        # of flags (see IO.sysopen) and +perm+ should be an octal number.
        # 
        # This does not raise errors for most failures, but installs returns a
        # Ruby symbol for the constant in the Errno::* namespace.
        # 
        # Common error symbols are:
        # 
        # - :ENOENT
        # - :EACCES
        # 
        # See your open(2) manpage for more information on open(2) errors.
        def self.tryopen(p1, p2 = v2, p3 = v3)
            #This is a stub, used for indexing
        end
    end
    module PipeMethods
        include Kgio::DefaultWaiters
    end
    require 'c_socket'
    require 'm_socket_methods'
    # A generic socket class with Kgio::SocketMethods included.
    # This is returned by all Kgio methods that accept(2) a connected
    # stream socket.
    class Socket < cSocket
        include mSocketMethods
        # If passed one argument, this is identical to Kgio::Socket.connect.
        # If passed two or three arguments, it uses its superclass method:
        # 
        #   Socket.new(domain, socktype [, protocol ])
        def self.new(*args)
            #This is a stub, used for indexing
        end
        # 
        # addr = Socket.pack_sockaddr_in(80, 'example.com')
        # Kgio::Socket.connect(addr) -> socket
        # 
        # addr = Socket.pack_sockaddr_un("/path/to/unix/socket")
        # Kgio::Socket.connect(addr) -> socket
        #  
        # Creates a generic Kgio::Socket object and initiates a
        # non-blocking connection.
        # 
        # This may block and call any method defined to +kgio_wait_writable+
        # for the class.
        def self.connect(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # addr = Socket.pack_sockaddr_in(80, 'example.com')
        # Kgio::Socket.start(addr) -> socket
        # 
        # addr = Socket.pack_sockaddr_un("/path/to/unix/socket")
        # Kgio::Socket.start(addr) -> socket
        #  
        # Creates a generic Kgio::Socket object and initiates a
        # non-blocking connection.  The caller should select/poll
        # on the socket for writability before attempting to write
        # or optimistically attempt a write and handle :wait_writable
        # or Errno::EAGAIN.
        def self.start(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # s = Kgio::Socket.new(:INET, :STREAM)
        # addr = Socket.pack_sockaddr_in(80, "example.com")
        # s.kgio_fastopen("hello world", addr) -> nil
        #  
        # Starts a TCP connection using TCP Fast Open.  This uses a blocking
        # sendto() syscall and is only available on Ruby 1.9 or later.
        # This raises exceptions (including Errno::EINPROGRESS/Errno::EAGAIN)
        # on errors.  Using this is only recommended for blocking sockets.
        # 
        # Timeouts may be set with setsockopt:
        # 
        #      s.setsockopt(:SOCKET, :SNDTIMEO, [1,0].pack("l_l_"))
        def kgio_fastopen(p1, p2)
            #This is a stub, used for indexing
        end
    end
    module SocketMethods
        include Kgio::DefaultWaiters
        # 
        # io.kgio_autopush = true
        # io.kgio_autopush = false
        #  
        # Enables or disables autopush on any given Kgio::SocketMethods-capable
        # IO object.  This does NOT enable or disable TCP_NOPUSH/TCP_CORK right
        # away, that must be done with IO.setsockopt
        # 
        # Only available on systems with TCP_CORK (Linux) or
        # TCP_NOPUSH (FreeBSD, and maybe other *BSDs).
        def kgio_autopush=(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # io.kgio_autopush?  -> true or false
        #  
        # Returns the current autopush state of the Kgio::SocketMethods-enabled
        # socket.
        # 
        # Only available on systems with TCP_CORK (Linux) or
        # TCP_NOPUSH (FreeBSD, and maybe other *BSDs).
        def kgio_autopush?()
            #This is a stub, used for indexing
        end
    end
    require 'c_tcp_server'
    # Kgio::TCPServer should be used in place of the plain TCPServer
    # when kgio_accept and kgio_tryaccept methods are needed.
    class TCPServer < cTCPServer
        # 
        # server = Kgio::TCPServer.new('0.0.0.0', 80)
        # server.kgio_tryaccept -> Kgio::Socket or nil
        # server.kgio_tryaccept(klass = MySocket) -> MySocket or nil
        # server.kgio_tryaccept(nil, flags) -> Kgio::Socket or nil
        #  
        # Initiates a non-blocking accept and returns a generic Kgio::Socket
        # object with the kgio_addr attribute set to the IP address of the
        # connected client on success.
        # 
        # Returns nil on EAGAIN, and raises on other errors.
        # 
        # An optional +klass+ argument may be specified to override the
        # Kgio::Socket-class on a successful return value.
        # 
        # An optional +flags+ argument may also be specified.
        # +flags+ is a bitmask that may contain any combination of:
        # 
        # - Kgio::SOCK_CLOEXEC - close-on-exec flag (enabled by default)
        # - Kgio::SOCK_NONBLOCK - non-blocking flag (unimportant)
        def kgio_tryaccept(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # server = Kgio::TCPServer.new('0.0.0.0', 80)
        # server.kgio_accept -> Kgio::Socket or nil
        # server.kgio_tryaccept -> Kgio::Socket or nil
        # server.kgio_tryaccept(klass = MySocket) -> MySocket or nil
        #  
        # Initiates a blocking accept and returns a generic Kgio::Socket
        # object with the kgio_addr attribute set to the IP address of
        # the client on success.
        # 
        # On Ruby implementations using native threads, this can use a blocking
        # accept(2) (or accept4(2)) system call to avoid thundering herds.
        # 
        # An optional +klass+ argument may be specified to override the
        # Kgio::Socket-class on a successful return value.
        # 
        # An optional +flags+ argument may also be specified.
        # +flags+ is a bitmask that may contain any combination of:
        # 
        # - Kgio::SOCK_CLOEXEC - close-on-exec flag (enabled by default)
        # - Kgio::SOCK_NONBLOCK - non-blocking flag (unimportant)
        def kgio_accept()
            #This is a stub, used for indexing
        end
    end
    require 'c_tcp_socket'
    # Kgio::TCPSocket should be used in place of the plain TCPSocket
    # when kgio_* methods are needed.
    class TCPSocket < cTCPSocket
        include mSocketMethods
        # 
        # Kgio::TCPSocket.new('127.0.0.1', 80) -> socket
        #  
        # Creates a new Kgio::TCPSocket object and initiates a
        # non-blocking connection.
        # 
        # This may block and call any method defined to +kgio_wait_writable+
        # for the class.
        # 
        # Unlike the TCPSocket.new in Ruby, this does NOT perform DNS
        # lookups (which is subject to a different set of timeouts and
        # best handled elsewhere).
        def self.new(p1, p2)
            #This is a stub, used for indexing
        end
        # 
        # Kgio::TCPSocket.start('127.0.0.1', 80) -> socket
        #  
        # Creates a new Kgio::TCPSocket object and initiates a
        # non-blocking connection.  The caller should select/poll
        # on the socket for writability before attempting to write
        # or optimistically attempt a write and handle :wait_writable
        # or Errno::EAGAIN.
        # 
        # Unlike the TCPSocket.new in Ruby, this does NOT perform DNS
        # lookups (which is subject to a different set of timeouts and
        # best handled elsewhere).
        def self.start(p1, p2)
            #This is a stub, used for indexing
        end
    end
    require 'c_unix_server'
    # Kgio::UNIXServer should be used in place of the plain UNIXServer
    # when kgio_accept and kgio_tryaccept methods are needed.
    class UNIXServer < cUNIXServer
        # 
        # server = Kgio::UNIXServer.new("/path/to/unix/socket")
        # server.kgio_tryaccept -> Kgio::Socket or nil
        # server.kgio_tryaccept(klass = MySocket) -> MySocket or nil
        # server.kgio_tryaccept(nil, flags) -> Kgio::Socket or nil
        #  
        # Initiates a non-blocking accept and returns a generic Kgio::Socket
        # object with the kgio_addr attribute set (to the value of
        # Kgio::LOCALHOST) on success.
        # 
        # An optional +klass+ argument may be specified to override the
        # Kgio::Socket-class on a successful return value.
        # 
        # An optional +flags+ argument may also be specified.
        # +flags+ is a bitmask that may contain any combination of:
        # 
        # - Kgio::SOCK_CLOEXEC - close-on-exec flag (enabled by default)
        # - Kgio::SOCK_NONBLOCK - non-blocking flag (unimportant)
        def kgio_tryaccept(*several_variants)
            #This is a stub, used for indexing
        end
        # 
        # server = Kgio::UNIXServer.new("/path/to/unix/socket")
        # server.kgio_accept -> Kgio::Socket or nil
        # server.kgio_accept(klass = MySocket) -> MySocket or nil
        # server.kgio_accept(nil, flags) -> Kgio::Socket or nil
        #  
        # Initiates a blocking accept and returns a generic Kgio::Socket
        # object with the kgio_addr attribute set (to the value of
        # Kgio::LOCALHOST) on success.
        # 
        # On Ruby implementations using native threads, this can use a blocking
        # accept(2) (or accept4(2)) system call to avoid thundering herds.
        # 
        # An optional +klass+ argument may be specified to override the
        # Kgio::Socket-class on a successful return value.
        # 
        # An optional +flags+ argument may also be specified.
        # +flags+ is a bitmask that may contain any combination of:
        # 
        # - Kgio::SOCK_CLOEXEC - close-on-exec flag (enabled by default)
        # - Kgio::SOCK_NONBLOCK - non-blocking flag (unimportant)
        def kgio_accept(*several_variants)
            #This is a stub, used for indexing
        end
    end
    require 'c_unix_socket'
    # Kgio::UNIXSocket should be used in place of the plain UNIXSocket
    # when kgio_* methods are needed.
    class UNIXSocket < cUNIXSocket
        include mSocketMethods
        # 
        # Kgio::UNIXSocket.new("/path/to/unix/socket") -> socket
        #  
        # Creates a new Kgio::UNIXSocket object and initiates a
        # non-blocking connection.
        # 
        # This may block and call any method defined to +kgio_wait_writable+
        # for the class.
        def self.new(p1)
            #This is a stub, used for indexing
        end
        # 
        # Kgio::UNIXSocket.start("/path/to/unix/socket") -> socket
        #  
        # Creates a new Kgio::UNIXSocket object and initiates a
        # non-blocking connection.  The caller should select/poll
        # on the socket for writability before attempting to write
        # or optimistically attempt a write and handle :wait_writable
        # or Errno::EAGAIN.
        def self.start(p1)
            #This is a stub, used for indexing
        end
    end
end
