=begin
 This is a machine generated stub using stdlib-doc for <b>module Debugger</b>
 Sources used:  gem debugger, v. 1.6.6
 Created on 2014-04-10 18:47:58 -0400 by IntelliJ Ruby Stubs Generator.
=end

# == Summary
# 
# This is a singleton class allows controlling the debugger. Use it to start/stop debugger,
# set/remove breakpoints, etc.
# ---
# == Summary
# 
# This is a singleton class allows controlling the debugger. Use it to start/stop debugger,
# set/remove breakpoints, etc.
# ---
# == Summary
# 
# This is a singleton class allows controlling the debugger. Use it to start/stop debugger,
# set/remove breakpoints, etc.
# ---
# == Summary
# 
# This is a singleton class allows controlling the debugger. Use it to start/stop debugger,
# set/remove breakpoints, etc.
# ---
# == Summary
# 
# This is a singleton class allows controlling the debugger. Use it to start/stop debugger,
# set/remove breakpoints, etc.
# ---
# == Summary
# 
# This is a singleton class allows controlling the debugger. Use it to start/stop debugger,
# set/remove breakpoints, etc.
module Debugger
    VERSION = nil #value is unknown, used for indexing.
    # Debugger.start_ -> bool
    # Debugger.start_ { ... } -> bool
    #  
    # This method is internal and activates the debugger. Use
    # Debugger.start (from <tt>lib/ruby-debug-base.rb</tt>) instead.
    # 
    # The return value is the value of !Debugger.started? <i>before</i>
    # issuing the +start+; That is, +true+ is returned, unless debugger
    # was previously started.
    # 
    # If a block is given, it starts debugger and yields to block. When
    # the block is finished executing it stops the debugger with
    # Debugger.stop method. Inside the block you will probably want to
    # have a call to Debugger.debugger. For example:
    #   Debugger.start{debugger; foo}  # Stop inside of foo
    # 
    # Also, ruby-debug only allows
    # one invocation of debugger at a time; nested Debugger.start's
    # have no effect and you can't use this inside the debugger itself.
    # 
    # <i>Note that if you want to completely remove the debugger hook,
    # you must call Debugger.stop as many times as you called
    # Debugger.start method.</i>
    def self.start_(*several_variants)
        #This is a stub, used for indexing
    end
    # Debugger.stop -> bool
    #  
    # This method disables the debugger. It returns +true+ if the debugger is disabled,
    # otherwise it returns +false+.
    # 
    # <i>Note that if you want to complete remove the debugger hook,
    # you must call Debugger.stop as many times as you called
    # Debugger.start method.</i>
    def self.stop()
        #This is a stub, used for indexing
    end
    # Debugger.started? -> bool
    #  
    # Returns +true+ the debugger is started.
    def self.started?()
        #This is a stub, used for indexing
    end
    # Debugger.breakpoints -> array
    #  
    # Returns an array of breakpoints.
    def self.breakpoints()
        #This is a stub, used for indexing
    end
    # Debugger.add_breakpoint(source, pos, condition = nil) -> breakpoint
    #  
    # Adds a new breakpoint.
    # <i>source</i> is a name of a file or a class.
    # <i>pos</i> is a line number or a method name if <i>source</i> is a class name.
    # <i>condition</i> is a string which is evaluated to +true+ when this breakpoint
    # is activated.
    def self.add_breakpoint(source, pos, condition = nil)
        #This is a stub, used for indexing
    end
    # Debugger.remove_breakpoint(id) -> breakpoint
    #  
    # Removes breakpoint by its id.
    # <i>id</i> is an identificator of a breakpoint.
    def self.remove_breakpoint(id)
        #This is a stub, used for indexing
    end
    # Debugger.catchpoint(string) -> string
    #  
    # Sets catchpoint. Returns the string passed.
    def self.add_catchpoint(p1)
        #This is a stub, used for indexing
    end
    # Debugger.catchpoints -> hash
    #  
    # Returns a current catchpoints, which is a hash exception names that will
    # trigger a debugger when raised. The values are the number of times taht
    # catchpoint was hit, initially 0.
    def self.catchpoints()
        #This is a stub, used for indexing
    end
    # Debugger.last_interrupted -> context
    #  
    # Returns last debugged context.
    def self.last_context()
        #This is a stub, used for indexing
    end
    # Debugger.contexts -> array
    #  
    # Returns an array of all contexts.
    def self.contexts()
        #This is a stub, used for indexing
    end
    # Debugger.current_context -> context
    #  
    # Returns current context.
    # <i>Note:</i> Debugger.current_context.thread == Thread.current
    def self.current_context()
        #This is a stub, used for indexing
    end
    # Debugger.thread_context(thread) -> context
    #  
    # Returns context of the thread passed as an argument.
    def self.thread_context(thread)
        #This is a stub, used for indexing
    end
    # Debugger.suspend -> Debugger
    #  
    # Suspends all contexts.
    def self.suspend()
        #This is a stub, used for indexing
    end
    # Debugger.resume -> Debugger
    #  
    # Resumes all contexts.
    def self.resume()
        #This is a stub, used for indexing
    end
    # Debugger.tracing -> bool
    #  
    # Returns +true+ if the global tracing is activated.
    def self.tracing()
        #This is a stub, used for indexing
    end
    # Debugger.tracing = bool
    #  
    # Sets the global tracing flag.
    def self.tracing= bool
        #This is a stub, used for indexing
    end
    # Debugger.debug_load(file, stop = false, increment_start = false) -> nil
    #  
    # Same as Kernel#load but resets current context's frames.
    # +stop+ parameter forces the debugger to stop at the first line of code in the +file+
    # +increment_start+ determines if start_count should be incremented. When
    #  control threads are used, they have to be set up before loading the
    #  debugger; so here +increment_start+ will be false.    
    # FOR INTERNAL USE ONLY.
    def self.debug_load(file, stop = false, increment_start = false)
        #This is a stub, used for indexing
    end
    # Debugger.skip { block } -> obj or nil
    #  
    # The code inside of the block is escaped from the debugger.
    def self.skip()
        #This is a stub, used for indexing
    end
    # Debugger.debug_at_exit { block } -> proc
    #  
    # Register <tt>at_exit</tt> hook which is escaped from the debugger.
    # FOR INTERNAL USE ONLY.
    def self.debug_at_exit()
        #This is a stub, used for indexing
    end
    # Debugger.post_mortem? -> bool
    #  
    # Returns +true+ if post-moterm debugging is enabled.
    def self.post_mortem?()
        #This is a stub, used for indexing
    end
    # Debugger.post_mortem = bool
    #  
    # Sets post-moterm flag.
    # FOR INTERNAL USE ONLY.
    def self.post_mortem= bool
        #This is a stub, used for indexing
    end
    # Debugger.keep_frame_binding? -> bool
    #  
    # Returns +true+ if the debugger will collect frame bindings.
    def self.keep_frame_binding?()
        #This is a stub, used for indexing
    end
    # Debugger.keep_frame_binding = bool
    #  
    # Setting to +true+ will make the debugger create frame bindings.
    def self.keep_frame_binding= bool
        #This is a stub, used for indexing
    end
    # Debugger.track_fame_args? -> bool
    #  
    # Returns +true+ if the debugger track frame argument values on calls.
    def self.track_frame_args?()
        #This is a stub, used for indexing
    end
    # Debugger.track_frame_args = bool
    #  
    # Setting to +true+ will make the debugger save argument info on calls.
    def self.track_frame_args= bool
        #This is a stub, used for indexing
    end
    class Breakpoint
        # breakpoint.enabled = bool
        #  
        # Enables or disables breakpoint.
        def enabled= bool
            #This is a stub, used for indexing
        end
        # breakpoint.enabled?
        #  
        # Returns whether breakpoint is enabled or not.
        def enabled?()
            #This is a stub, used for indexing
        end
        # breakpoint.expr -> string
        #  
        # Returns a codition expression when this breakpoint should be activated.
        def expr()
            #This is a stub, used for indexing
        end
        # breakpoint.expr = string | nil
        #  
        # Sets the codition expression when this breakpoint should be activated.
        def expr=(p1)
            #This is a stub, used for indexing
        end
        # breakpoint.hit_condition -> symbol
        #  
        # Returns the hit condition of the breakpoint:
        # 
        # +nil+ if it is an unconditional breakpoint, or
        # :greater_or_equal, :equal, :modulo
        def hit_condition()
            #This is a stub, used for indexing
        end
        # breakpoint.hit_condition = symbol
        #  
        # Sets the hit condition of the breakpoint which must be one of the following values:
        # 
        # +nil+ if it is an unconditional breakpoint, or
        # :greater_or_equal(:ge), :equal(:eq), :modulo(:mod)
        def hit_condition= symbol
            #This is a stub, used for indexing
        end
        # breakpoint.hit_count -> int
        #  
        # Returns the hit count of the breakpoint.
        def hit_count()
            #This is a stub, used for indexing
        end
        # breakpoint.hit_value -> int
        #  
        # Returns the hit value of the breakpoint.
        def hit_value()
            #This is a stub, used for indexing
        end
        # breakpoint.hit_value = int
        #  
        # Sets the hit value of the breakpoint.
        def hit_value= int
            #This is a stub, used for indexing
        end
        # breakpoint.id -> int
        #  
        # Returns id of the breakpoint.
        def id()
            #This is a stub, used for indexing
        end
        # breakpoint.pos -> string or int
        #  
        # Returns the position of this breakpoint.
        def pos()
            #This is a stub, used for indexing
        end
        # breakpoint.pos = string or int
        #  
        # Sets the position of this breakpoint.
        def pos=(p1)
            #This is a stub, used for indexing
        end
        # breakpoint.source -> string
        #  
        # Returns a source of the breakpoint.
        def source()
            #This is a stub, used for indexing
        end
        # breakpoint.source = string
        #  
        # Sets the source of the breakpoint.
        def source= string
            #This is a stub, used for indexing
        end
    end
    class Context
        # context.step(steps, force = false)
        #  
        # Stops the current context after a number of +steps+ are made.
        # +force+ parameter (if true) ensures that the cursor moves from the current line.
        def stop_next=(p1, p2 = v2)
            #This is a stub, used for indexing
        end
        # context.step(steps, force = false)
        #  
        # Stops the current context after a number of +steps+ are made.
        # +force+ parameter (if true) ensures that the cursor moves from the current line.
        def step(steps, force = false)
            #This is a stub, used for indexing
        end
        # context.step_over(steps, frame = nil, force = false)
        #  
        # Steps over a +steps+ number of times.
        # Make step over operation on +frame+, by default the current frame.
        # +force+ parameter (if true) ensures that the cursor moves from the current line.
        def step_over(steps, frame = nil, force = false)
            #This is a stub, used for indexing
        end
        # context.stop_frame(frame)
        #  
        # Stops when a frame with number +frame+ is activated. Implements +finish+ and +next+ commands.
        def stop_frame=(p1)
            #This is a stub, used for indexing
        end
        # context.thread -> thread
        #  
        # Returns a thread this context is associated with.
        def thread()
            #This is a stub, used for indexing
        end
        # context.thnum -> int
        #  
        # Returns the context's number.
        def thnum()
            #This is a stub, used for indexing
        end
        # context.stop_reason -> sym
        #  
        # Returns the reason for the stop. It maybe of the following values:
        # :initial, :step, :breakpoint, :catchpoint, :post-mortem
        def stop_reason()
            #This is a stub, used for indexing
        end
        # context.suspend -> nil
        #  
        # Suspends the thread when it is running.
        def suspend()
            #This is a stub, used for indexing
        end
        # context.suspended? -> bool
        #  
        # Returns +true+ if the thread is suspended by debugger.
        def suspended?()
            #This is a stub, used for indexing
        end
        # context.resume -> nil
        #  
        # Resumes the thread from the suspended mode.
        def resume()
            #This is a stub, used for indexing
        end
        # context.tracing -> bool
        #  
        # Returns the tracing flag for the current context.
        def tracing()
            #This is a stub, used for indexing
        end
        # context.tracing = bool
        #  
        # Controls the tracing for this context.
        def tracing= bool
            #This is a stub, used for indexing
        end
        # context.ignored? -> bool
        #  
        # Returns the ignore flag for the current context.
        def ignored?()
            #This is a stub, used for indexing
        end
        # context.frame_args(frame_position=0) -> list
        #  
        # Returns frame's argument parameters
        def frame_args(frame_position=0)
            #This is a stub, used for indexing
        end
        # context.frame_args_info(frame_position=0) -> list 
        # if track_frame_args or nil otherwise
        #  
        # Returns info saved about call arguments (if any saved).
        def frame_args_info(frame_position=0)
            #This is a stub, used for indexing
        end
        # context.frame_binding(frame_position=0) -> binding
        #  
        # Returns frame's binding.
        def frame_binding(frame_position=0)
            #This is a stub, used for indexing
        end
        # context.frame_class(frame_position) -> obj
        #  
        # Returns the real class of the frame. 
        # It could be different than context.frame_self(frame).class
        def frame_class(frame_position)
            #This is a stub, used for indexing
        end
        # context.frame_file(frame_position) -> string
        #  
        # Returns the name of the file.
        def frame_file(frame_position)
            #This is a stub, used for indexing
        end
        # context.frame_method(frame_position=0) -> sym
        #  
        # Returns the sym of the called method.
        def frame_id(*args)
            #This is a stub, used for indexing
        end
        # context.frame_line(frame_position) -> int
        #  
        # Returns the line number in the file.
        def frame_line(frame_position)
            #This is a stub, used for indexing
        end
        # context.frame_locals(frame) -> hash
        #  
        # Returns frame's local variables.
        def frame_locals(frame)
            #This is a stub, used for indexing
        end
        # context.frame_method(frame_position=0) -> sym
        #  
        # Returns the sym of the called method.
        def frame_method(frame_position=0)
            #This is a stub, used for indexing
        end
        # context.frame_self(frame_postion=0) -> obj
        #  
        # Returns self object of the frame.
        def frame_self(frame_postion=0)
            #This is a stub, used for indexing
        end
        # context.stack_size-> int
        #  
        # Returns the size of the context stack.
        def stack_size()
            #This is a stub, used for indexing
        end
        # context.dead? -> bool
        #  
        # Returns +true+ if context doesn't represent a live context and is created
        # during post-mortem exception handling.
        def dead?()
            #This is a stub, used for indexing
        end
        # context.breakpoint -> breakpoint
        #  
        # Returns a context-specific temporary Breakpoint object.
        def breakpoint()
            #This is a stub, used for indexing
        end
        # context.set_breakpoint(source, pos, condition = nil) -> breakpoint
        #  
        # Sets a context-specific temporary breakpoint, which can be used to implement
        # 'Run to Cursor' debugger function. When this breakpoint is reached, it will be
        # cleared out.
        # 
        # <i>source</i> is a name of a file or a class.
        # <i>pos</i> is a line number or a method name if <i>source</i> is a class name.
        # <i>condition</i> is a string which is evaluated to +true+ when this breakpoint
        # is activated.
        def set_breakpoint(source, pos, condition = nil)
            #This is a stub, used for indexing
        end
        # context.jump(line, file) -> bool
        #  
        # Returns +true+ if jump to +line+ in filename +file+ was successful.
        def jump(line, file)
            #This is a stub, used for indexing
        end
        # context.break -> bool
        #  
        # Returns +true+ if context is currently running and set flag to break it at next line
        def pause()
            #This is a stub, used for indexing
        end
    end
    class DebugThread < Thread
    end
    class ThreadsTable
    end
end
