=begin
 This is a machine generated stub using stdlib-doc for <b>module Nokogiri</b>
 Sources used:  gem nokogiri, v. 1.6.3.1
 Created on 2014-07-28 16:19:07 -0400 by IntelliJ Ruby Stubs Generator.
=end

module Nokogiri
    class EncodingHandler
        # Nokogiri::EncodingHandler.[](name)
        #  
        # Get the encoding handler for +name+
        def self.[](p1)
            #This is a stub, used for indexing
        end
        # Nokogiri::EncodingHandler.delete(name)
        #  
        # Delete the encoding alias named +name+
        def self.delete(name)
            #This is a stub, used for indexing
        end
        # Nokogiri::EncodingHandler.alias(from, to)
        #  
        # Alias encoding handler with name +from+ to name +to+
        def self.alias(from, to)
            #This is a stub, used for indexing
        end
        # Nokogiri::EncodingHandler.clear_aliases!
        #  
        # Remove all encoding aliases.
        def self.clear_aliases!()
            #This is a stub, used for indexing
        end
        # name
        #  
        # Get the name of this EncodingHandler
        def name()
            #This is a stub, used for indexing
        end
    end
    module HTML
        class Document < Document
            # read_memory(string, url, encoding, options)
            #  
            # Read the HTML document contained in +string+ with given +url+, +encoding+,
            # and +options+.  See Nokogiri::HTML.parse
            def self.read_memory(string, url, encoding, options)
                #This is a stub, used for indexing
            end
            # read_io(io, url, encoding, options)
            #  
            # Read the HTML document from +io+ with given +url+, +encoding+,
            # and +options+.  See Nokogiri::HTML.parse
            def self.read_io(io, url, encoding, options)
                #This is a stub, used for indexing
            end
            # new
            #  
            # Create a new document
            def self.new()
                #This is a stub, used for indexing
            end
            # type
            #  
            # The type for this document
            def type()
                #This is a stub, used for indexing
            end
        end
        class ElementDescription
            # [](tag_name)
            #  
            # Get ElemementDescription for +tag_name+
            def self.[](p1)
                #This is a stub, used for indexing
            end
            # name
            #  
            # Get the tag name for this ElemementDescription
            def name()
                #This is a stub, used for indexing
            end
            # implied_start_tag?
            #  
            # Can the start tag be implied for this tag?
            def implied_start_tag?()
                #This is a stub, used for indexing
            end
            # implied_end_tag?
            #  
            # Can the end tag be implied for this tag?
            def implied_end_tag?()
                #This is a stub, used for indexing
            end
            # save_end_tag?
            #  
            # Should the end tag be saved?
            def save_end_tag?()
                #This is a stub, used for indexing
            end
            # empty?
            #  
            # Is this an empty element?
            def empty?()
                #This is a stub, used for indexing
            end
            # deprecated?
            #  
            # Is this element deprecated?
            def deprecated?()
                #This is a stub, used for indexing
            end
            # inline?
            #  
            # Is this element an inline element?
            def inline?()
                #This is a stub, used for indexing
            end
            # description
            #  
            # The description for this element
            def description()
                #This is a stub, used for indexing
            end
            # sub_elements
            #  
            # A list of allowed sub elements for this element.
            def sub_elements()
                #This is a stub, used for indexing
            end
            # default_sub_element
            #  
            # The default sub element for this element
            def default_sub_element()
                #This is a stub, used for indexing
            end
            # optional_attributes
            #  
            # A list of optional attributes for this element
            def optional_attributes()
                #This is a stub, used for indexing
            end
            # deprecated_attributes
            #  
            # A list of deprecated attributes for this element
            def deprecated_attributes()
                #This is a stub, used for indexing
            end
            # required_attributes
            #  
            # A list of required attributes for this element
            def required_attributes()
                #This is a stub, used for indexing
            end
        end
        class EntityLookup
            # get(key)
            #  
            # Get the HTML::EntityDescription for +key+
            def get(key)
                #This is a stub, used for indexing
            end
        end
        module SAX
            class ParserContext < ParserContext
                def self.memory(p1, p2)
                    #This is a stub, used for indexing
                end
                def self.file(p1, p2)
                    #This is a stub, used for indexing
                end
                def parse_with(p1)
                    #This is a stub, used for indexing
                end
            end
            require 'c_nokogiri_xml_sax_push_parser'
            class PushParser < cNokogiriXmlSaxPushParser
                # initialize_native(xml_sax, filename)
                #  
                # Initialize the push parser with +xml_sax+ using +filename+
                def initialize_native(xml_sax, filename)
                    #This is a stub, used for indexing
                end
                # native_write(chunk, last_chunk)
                #  
                # Write +chunk+ to PushParser. +last_chunk+ triggers the end_document handle
                def native_write(chunk, last_chunk)
                    #This is a stub, used for indexing
                end
            end
        end
    end
    class SyntaxError < StandardError
    end
    module XML
        class Attr < Node
            # new(document, name)
            #  
            # Create a new Attr element on the +document+ with +name+
            def self.new(document, name)
                #This is a stub, used for indexing
            end
            # value=(content)
            #  
            # Set the value for this Attr to +content+
            def value=(content)
                #This is a stub, used for indexing
            end
        end
        class AttributeDecl < Node
            # attribute_type
            #  
            # The attribute_type for this AttributeDecl
            def attribute_type()
                #This is a stub, used for indexing
            end
            # default
            #  
            # The default value
            def default()
                #This is a stub, used for indexing
            end
            # enumeration
            #  
            # An enumeration of possible values
            def enumeration()
                #This is a stub, used for indexing
            end
        end
        class CDATA < Text
            # new(document, content)
            #  
            # Create a new CDATA element on the +document+ with +content+
            def self.new(document, content)
                #This is a stub, used for indexing
            end
        end
        class CharacterData < Node
        end
        class Comment < CharacterData
            # new(document, content)
            #  
            # Create a new Comment element on the +document+ with +content+
            def self.new(document, content)
                #This is a stub, used for indexing
            end
        end
        class DTD < Node
            # notations
            #  
            # Get a hash of the notations for this DTD.
            def notations()
                #This is a stub, used for indexing
            end
            # elements
            #  
            # Get a hash of the elements for this DTD.
            def elements()
                #This is a stub, used for indexing
            end
            # entities
            #  
            # Get a hash of the elements for this DTD.
            def entities()
                #This is a stub, used for indexing
            end
            # validate(document)
            #  
            # Validate +document+ returning a list of errors
            def validate(document)
                #This is a stub, used for indexing
            end
            # attributes
            #  
            # Get a hash of the attributes for this DTD.
            def attributes()
                #This is a stub, used for indexing
            end
            # system_id
            #  
            # Get the System ID for this DTD
            def system_id()
                #This is a stub, used for indexing
            end
            # external_id
            #  
            # Get the External ID for this DTD
            def external_id()
                #This is a stub, used for indexing
            end
        end
        class Document < Node
            # read_memory(string, url, encoding, options)
            #  
            # Create a new document from a String
            def self.read_memory(string, url, encoding, options)
                #This is a stub, used for indexing
            end
            # read_io(io, url, encoding, options)
            #  
            # Create a new document from an IO object
            def self.read_io(io, url, encoding, options)
                #This is a stub, used for indexing
            end
            # new(version = default)
            #  
            # Create a new document with +version+ (defaults to "1.0")
            def self.new(version = default)
                #This is a stub, used for indexing
            end
            # root
            #  
            # Get the root node for this document.
            def root()
                #This is a stub, used for indexing
            end
            # root=
            #  
            # Set the root element on this document
            def root=()
                #This is a stub, used for indexing
            end
            # encoding
            #  
            # Get the encoding for this Document
            def encoding()
                #This is a stub, used for indexing
            end
            # encoding= encoding
            #  
            # Set the encoding string for this Document
            def encoding= encoding
                #This is a stub, used for indexing
            end
            # version
            #  
            # Get the XML version for this Document
            def version()
                #This is a stub, used for indexing
            end
            # doc.canonicalize(mode=XML_C14N_1_0,inclusive_namespaces=nil,with_comments=false)
            # doc.canonicalize { |obj, parent| ... }
            #  
            # Canonicalize a document and return the results.  Takes an optional block
            # that takes two parameters: the +obj+ and that node's +parent+.  
            # The  +obj+ will be either a Nokogiri::XML::Node, or a Nokogiri::XML::Namespace
            # The block must return a non-nil, non-false value if the +obj+ passed in 
            # should be included in the canonicalized document.
            def canonicalize(*several_variants)
                #This is a stub, used for indexing
            end
            # dup
            #  
            # Copy this Document.  An optional depth may be passed in, but it defaults
            # to a deep copy.  0 is a shallow copy, 1 is a deep copy.
            def dup()
                #This is a stub, used for indexing
            end
            # url
            #  
            # Get the url name for this document.
            def url()
                #This is a stub, used for indexing
            end
            # doc.create_entity(name, type, external_id, system_id, content)
            #  
            # Create a new entity named +name+.
            # 
            # +type+ is an integer representing the type of entity to be created, and it
            # defaults to Nokogiri::XML::EntityDecl::INTERNAL_GENERAL.  See
            # the constants on Nokogiri::XML::EntityDecl for more information.
            # 
            # +external_id+, +system_id+, and +content+ set the External ID, System ID,
            # and content respectively.  All of these parameters are optional.
            def create_entity(name, type, external_id, system_id, content)
                #This is a stub, used for indexing
            end
            # remove_namespaces!
            #  
            # Remove all namespaces from all nodes in the document.
            # 
            # This could be useful for developers who either don't understand namespaces
            # or don't care about them.
            # 
            # The following example shows a use case, and you can decide for yourself
            # whether this is a good thing or not:
            # 
            #   doc = Nokogiri::XML <<-EOXML
            #      <root>
            #        <car xmlns:part="http://general-motors.com/">
            #          <part:tire>Michelin Model XGV</part:tire>
            #        </car>
            #        <bicycle xmlns:part="http://schwinn.com/">
            #          <part:tire>I'm a bicycle tire!</part:tire>
            #        </bicycle>
            #      </root>
            #      EOXML
            # 
            #   doc.xpath("//tire").to_s # => ""
            #   doc.xpath("//part:tire", "part" => "http://general-motors.com/").to_s # => "<part:tire>Michelin Model XGV</part:tire>"
            #   doc.xpath("//part:tire", "part" => "http://schwinn.com/").to_s # => "<part:tire>I'm a bicycle tire!</part:tire>"
            # 
            #   doc.remove_namespaces!
            # 
            #   doc.xpath("//tire").to_s # => "<tire>Michelin Model XGV</tire><tire>I'm a bicycle tire!</tire>"
            #   doc.xpath("//part:tire", "part" => "http://general-motors.com/").to_s # => ""
            #   doc.xpath("//part:tire", "part" => "http://schwinn.com/").to_s # => ""
            # 
            # For more information on why this probably is *not* a good thing in general,
            # please direct your browser to
            # http://tenderlovemaking.com/2009/04/23/namespaces-in-xml.html
            def remove_namespaces!()
                #This is a stub, used for indexing
            end
        end
        class DocumentFragment < Node
            # new(document)
            #  
            # Create a new DocumentFragment element on the +document+
            def self.new(document)
                #This is a stub, used for indexing
            end
        end
        class Element < Node
        end
        class ElementContent
            # name
            #  
            # Get the require element +name+
            def name()
                #This is a stub, used for indexing
            end
            # type
            #  
            # Get the element content +type+.  Possible values are PCDATA, ELEMENT, SEQ,
            # or OR.
            def type()
                #This is a stub, used for indexing
            end
            # occur
            #  
            # Get the element content +occur+ flag.  Possible values are ONCE, OPT, MULT
            # or PLUS.
            def occur()
                #This is a stub, used for indexing
            end
            # prefix
            #  
            # Get the element content namespace +prefix+.
            def prefix()
                #This is a stub, used for indexing
            end
            # c1
            #  
            # Get the first child.
            def c1()
                #This is a stub, used for indexing
            end
            # c2
            #  
            # Get the first child.
            def c2()
                #This is a stub, used for indexing
            end
        end
        class ElementDecl < Node
            # element_type
            #  
            # The element_type
            def element_type()
                #This is a stub, used for indexing
            end
            # content
            #  
            # The allowed content for this ElementDecl
            def content()
                #This is a stub, used for indexing
            end
            # prefix
            #  
            # The namespace prefix for this ElementDecl
            def prefix()
                #This is a stub, used for indexing
            end
        end
        class EntityDecl < Node
            # original_content
            #  
            # Get the original_content before ref substitution
            def original_content()
                #This is a stub, used for indexing
            end
            # content
            #  
            # Get the content
            def content()
                #This is a stub, used for indexing
            end
            # entity_type
            #  
            # Get the entity type
            def entity_type()
                #This is a stub, used for indexing
            end
            # external_id
            #  
            # Get the external identifier for PUBLIC
            def external_id()
                #This is a stub, used for indexing
            end
            # system_id
            #  
            # Get the URI for a SYSTEM or PUBLIC Entity
            def system_id()
                #This is a stub, used for indexing
            end
        end
        class EntityReference < Node
            # new(document, content)
            #  
            # Create a new EntityReference element on the +document+ with +name+
            def self.new(document, content)
                #This is a stub, used for indexing
            end
        end
        class Namespace
            # prefix
            #  
            # Get the prefix for this namespace.  Returns +nil+ if there is no prefix.
            def prefix()
                #This is a stub, used for indexing
            end
            # href
            #  
            # Get the href for this namespace
            def href()
                #This is a stub, used for indexing
            end
        end
        class Node
            # new(name, document)
            #  
            # Create a new node with +name+ sharing GC lifecycle with +document+
            def self.new(name, document)
                #This is a stub, used for indexing
            end
            # add_namespace_definition(prefix, href)
            #  
            # Adds a namespace definition with +prefix+ using +href+ value. The result is
            # as if parsed XML for this node had included an attribute
            # 'xmlns:prefix=value'.  A default namespace for this node ("xmlns=") can be
            # added by passing 'nil' for prefix. Namespaces added this way will not
            # show up in #attributes, but they will be included as an xmlns attribute
            # when the node is serialized to XML.
            def add_namespace_definition(prefix, href)
                #This is a stub, used for indexing
            end
            # name
            #  
            # Returns the name for this Node
            def node_name()
                #This is a stub, used for indexing
            end
            # document
            #  
            # Get the document for this Node
            def document()
                #This is a stub, used for indexing
            end
            # name=(new_name)
            #  
            # Set the name for this Node
            def node_name=(p1)
                #This is a stub, used for indexing
            end
            # parent
            #  
            # Get the parent Node for this Node
            def parent()
                #This is a stub, used for indexing
            end
            # child
            #  
            # Returns the child node
            def child()
                #This is a stub, used for indexing
            end
            # first_element_child
            #  
            # Returns the first child node of this node that is an element.
            # 
            # Example:
            # 
            #   @doc.root.first_element_child.element? # => true
            def first_element_child()
                #This is a stub, used for indexing
            end
            # last_element_child
            #  
            # Returns the last child node of this node that is an element.
            # 
            # Example:
            # 
            #   @doc.root.last_element_child.element? # => true
            def last_element_child()
                #This is a stub, used for indexing
            end
            # children
            #  
            # Get the list of children for this node as a NodeSet
            def children()
                #This is a stub, used for indexing
            end
            # element_children
            #  
            # Get the list of children for this node as a NodeSet.  All nodes will be
            # element nodes.
            # 
            # Example:
            # 
            #   @doc.root.element_children.all? { |x| x.element? } # => true
            def element_children()
                #This is a stub, used for indexing
            end
            # next_sibling
            #  
            # Returns the next sibling node
            def next_sibling()
                #This is a stub, used for indexing
            end
            # previous_sibling
            #  
            # Returns the previous sibling node
            def previous_sibling()
                #This is a stub, used for indexing
            end
            # next_element
            #  
            # Returns the next Nokogiri::XML::Element type sibling node.
            def next_element()
                #This is a stub, used for indexing
            end
            # previous_element
            #  
            # Returns the previous Nokogiri::XML::Element type sibling node.
            def previous_element()
                #This is a stub, used for indexing
            end
            # node_type
            #  
            # Get the type for this Node
            def node_type()
                #This is a stub, used for indexing
            end
            # content
            #  
            # Returns the content for this Node
            def content()
                #This is a stub, used for indexing
            end
            # path
            #  
            # Returns the path associated with this Node
            def path()
                #This is a stub, used for indexing
            end
            # key?(attribute)
            #  
            # Returns true if +attribute+ is set
            def key?(attribute)
                #This is a stub, used for indexing
            end
            # namespaced_key?(attribute, namespace)
            #  
            # Returns true if +attribute+ is set with +namespace+
            def namespaced_key?(attribute, namespace)
                #This is a stub, used for indexing
            end
            # blank?
            #  
            # Is this node blank?
            def blank?()
                #This is a stub, used for indexing
            end
            # attribute_nodes()
            #  
            # returns a list containing the Node attributes.
            def attribute_nodes()
                #This is a stub, used for indexing
            end
            # attribute(name)
            #  
            # Get the attribute node with +name+
            def attribute(name)
                #This is a stub, used for indexing
            end
            # attribute_with_ns(name, namespace)
            #  
            # Get the attribute node with +name+ and +namespace+
            def attribute_with_ns(name, namespace)
                #This is a stub, used for indexing
            end
            # namespace()
            #  
            # returns the namespace of the element or attribute node as a Namespace
            # object, or nil if there is no namespace for the element or attribute.
            def namespace()
                #This is a stub, used for indexing
            end
            # namespace_definitions()
            #  
            # returns namespaces defined on self element directly, as an array of Namespace objects. Includes both a default namespace (as in"xmlns="), and prefixed namespaces (as in "xmlns:prefix=").
            def namespace_definitions()
                #This is a stub, used for indexing
            end
            # namespace_scopes()
            #  
            # returns namespaces in scope for self -- those defined on self element
            # directly or any ancestor node -- as an array of Namespace objects.  Default
            # namespaces ("xmlns=" style) for self are included in this array; Default
            # namespaces for  ancestors, however, are not. See also #namespaces
            def namespace_scopes()
                #This is a stub, used for indexing
            end
            # encode_special_chars(string)
            #  
            # Encode any special characters in +string+
            def encode_special_chars(string)
                #This is a stub, used for indexing
            end
            # dup
            #  
            # Copy this node.  An optional depth may be passed in, but it defaults
            # to a deep copy.  0 is a shallow copy, 1 is a deep copy.
            def dup()
                #This is a stub, used for indexing
            end
            # unlink
            #  
            # Unlink this node from its current context.
            def unlink()
                #This is a stub, used for indexing
            end
            # internal_subset
            #  
            # Get the internal subset
            def internal_subset()
                #This is a stub, used for indexing
            end
            # external_subset
            #  
            # Get the external subset
            def external_subset()
                #This is a stub, used for indexing
            end
            # create_internal_subset(name, external_id, system_id)
            #  
            # Create the internal subset of a document.
            # 
            #   doc.create_internal_subset("chapter", "-//OASIS//DTD DocBook XML//EN", "chapter.dtd")
            #   # => <!DOCTYPE chapter PUBLIC "-//OASIS//DTD DocBook XML//EN" "chapter.dtd">
            # 
            #   doc.create_internal_subset("chapter", nil, "chapter.dtd")
            #   # => <!DOCTYPE chapter SYSTEM "chapter.dtd">
            def create_internal_subset(name, external_id, system_id)
                #This is a stub, used for indexing
            end
            # create_external_subset(name, external_id, system_id)
            #  
            # Create an external subset
            def create_external_subset(name, external_id, system_id)
                #This is a stub, used for indexing
            end
            # pointer_id
            #  
            # Get the internal pointer number
            def pointer_id()
                #This is a stub, used for indexing
            end
            # line
            #  
            # Returns the line for this Node
            def line()
                #This is a stub, used for indexing
            end
            # content=
            #  
            # Set the content for this Node
            def native_content=(p1)
                #This is a stub, used for indexing
            end
            # process_xincludes(options)
            #  
            # Loads and substitutes all xinclude elements below the node. The
            # parser context will be initialized with +options+.
            def process_xincludes(options)
                #This is a stub, used for indexing
            end
            # TODO: DOCUMENT ME   
            def in_context(p1, p2)
                #This is a stub, used for indexing
            end
            # dump_html
            #  
            # Returns the Node as html.
            def dump_html()
                #This is a stub, used for indexing
            end
            # native_write_to(io, encoding, options)
            #  
            # Write this Node to +io+ with +encoding+ and +options+
            def native_write_to(io, encoding, options)
                #This is a stub, used for indexing
            end
            # get(attribute)
            #  
            # Get the value for +attribute+
            def get(attribute)
                #This is a stub, used for indexing
            end
            # []=(property, value)
            #  
            # Set the +property+ to +value+
            def set(p1, p2)
                #This is a stub, used for indexing
            end
            # set_namespace(namespace)
            #  
            # Set the namespace to +namespace+
            def set_namespace(namespace)
                #This is a stub, used for indexing
            end
            # compare(other)
            #  
            # Compare this Node to +other+ with respect to their Document
            def compare(other)
                #This is a stub, used for indexing
            end
        end
        class NodeSet
            # length
            #  
            # Get the length of the node set
            def length()
                #This is a stub, used for indexing
            end
            # [index] -> Node or nil
            # [start, length] -> NodeSet or nil
            # [range] -> NodeSet or nil
            # slice(index) -> Node or nil
            # slice(start, length) -> NodeSet or nil
            # slice(range) -> NodeSet or nil
            #  
            # Element reference - returns the node at +index+, or returns a NodeSet
            # containing nodes starting at +start+ and continuing for +length+ elements, or
            # returns a NodeSet containing nodes specified by +range+. Negative +indices+
            # count backward from the end of the +node_set+ (-1 is the last node). Returns
            # nil if the +index+ (or +start+) are out of range.
            def [](p1, p2 = v2)
                #This is a stub, used for indexing
            end
            # [index] -> Node or nil
            # [start, length] -> NodeSet or nil
            # [range] -> NodeSet or nil
            # slice(index) -> Node or nil
            # slice(start, length) -> NodeSet or nil
            # slice(range) -> NodeSet or nil
            #  
            # Element reference - returns the node at +index+, or returns a NodeSet
            # containing nodes starting at +start+ and continuing for +length+ elements, or
            # returns a NodeSet containing nodes specified by +range+. Negative +indices+
            # count backward from the end of the +node_set+ (-1 is the last node). Returns
            # nil if the +index+ (or +start+) are out of range.
            def slice(*several_variants)
                #This is a stub, used for indexing
            end
            # push(node)
            #  
            # Append +node+ to the NodeSet.
            def push(node)
                #This is a stub, used for indexing
            end
            # |(node_set)
            #  
            # Returns a new set built by merging the set and the elements of the given
            # set.
            def |(p1)
                #This is a stub, used for indexing
            end
            # -(node_set)
            #  
            # Difference - returns a new NodeSet that is a copy of this NodeSet, removing
            # each item that also appears in +node_set+
            def -(p1)
                #This is a stub, used for indexing
            end
            # unlink
            #  
            # Unlink this NodeSet and all Node objects it contains from their current context.
            def unlink()
                #This is a stub, used for indexing
            end
            # to_a
            #  
            # Return this list as an Array
            def to_a()
                #This is a stub, used for indexing
            end
            # dup
            #  
            # Duplicate this node set
            def dup()
                #This is a stub, used for indexing
            end
            # delete(node)
            #  
            # Delete +node+ from the Nodeset, if it is a member. Returns the deleted node
            # if found, otherwise returns nil.
            def delete(node)
                #This is a stub, used for indexing
            end
            # &(node_set)
            #  
            # Set Intersection — Returns a new NodeSet containing nodes common to the two NodeSets.
            def &(p1)
                #This is a stub, used for indexing
            end
            # include?(node)
            #  
            # Returns true if any member of node set equals +node+.
            def include?(node)
                #This is a stub, used for indexing
            end
        end
        class ProcessingInstruction < Node
            # new(document, name, content)
            #  
            # Create a new ProcessingInstruction element on the +document+ with +name+
            # and +content+
            def self.new(document, name, content)
                #This is a stub, used for indexing
            end
        end
        class Reader
            # from_memory(string, url = nil, encoding = nil, options = 0)
            #  
            # Create a new reader that parses +string+
            def self.from_memory(string, url = nil, encoding = nil, options = 0)
                #This is a stub, used for indexing
            end
            # from_io(io, url = nil, encoding = nil, options = 0)
            #  
            # Create a new reader that parses +io+
            def self.from_io(io, url = nil, encoding = nil, options = 0)
                #This is a stub, used for indexing
            end
            # read
            #  
            # Move the Reader forward through the XML document.
            def read()
                #This is a stub, used for indexing
            end
            # inner_xml
            #  
            # Read the contents of the current node, including child nodes and markup.
            # Returns a utf-8 encoded string.
            def inner_xml()
                #This is a stub, used for indexing
            end
            # outer_xml
            #  
            # Read the current node and its contents, including child nodes and markup.
            # Returns a utf-8 encoded string.
            def outer_xml()
                #This is a stub, used for indexing
            end
            # state
            #  
            # Get the state of the reader
            def state()
                #This is a stub, used for indexing
            end
            # node_type
            #  
            # Get the type of readers current node
            def node_type()
                #This is a stub, used for indexing
            end
            # name
            #  
            # Get the name of the node. Returns a utf-8 encoded string.
            def name()
                #This is a stub, used for indexing
            end
            # local_name
            #  
            # Get the local name of the node
            def local_name()
                #This is a stub, used for indexing
            end
            # namespace_uri
            #  
            # Get the URI defining the namespace associated with the node
            def namespace_uri()
                #This is a stub, used for indexing
            end
            # prefix
            #  
            # Get the shorthand reference to the namespace associated with the node.
            def prefix()
                #This is a stub, used for indexing
            end
            # value
            #  
            # Get the text value of the node if present. Returns a utf-8 encoded string.
            def value()
                #This is a stub, used for indexing
            end
            # lang
            #  
            # Get the xml:lang scope within which the node resides.
            def lang()
                #This is a stub, used for indexing
            end
            # xml_version
            #  
            # Get the XML version of the document being read
            def xml_version()
                #This is a stub, used for indexing
            end
            # depth
            #  
            # Get the depth of the node
            def depth()
                #This is a stub, used for indexing
            end
            # attribute_count
            #  
            # Get the number of attributes for the current node
            def attribute_count()
                #This is a stub, used for indexing
            end
            # attribute(name)
            #  
            # Get the value of attribute named +name+
            def attribute(name)
                #This is a stub, used for indexing
            end
            # namespaces
            #  
            # Get a hash of namespaces for this Node
            def namespaces()
                #This is a stub, used for indexing
            end
            # attribute_at(index)
            #  
            # Get the value of attribute at +index+
            def attribute_at(index)
                #This is a stub, used for indexing
            end
            # reader.empty_element? # => true or false
            #  
            # Returns true if the current node is empty, otherwise false.
            def empty_element?()
                #This is a stub, used for indexing
            end
            # attributes?
            #  
            # Does this node have attributes?
            def attributes?()
                #This is a stub, used for indexing
            end
            # value?
            #  
            # Does this node have a text value?
            def value?()
                #This is a stub, used for indexing
            end
            # default?
            #  
            # Was an attribute generated from the default value in the DTD or schema?
            def default?()
                #This is a stub, used for indexing
            end
            # base_uri
            #  
            # Get the xml:base of the node
            def base_uri()
                #This is a stub, used for indexing
            end
            # attribute_nodes
            #  
            # Get a list of attributes for this Node
            def attr_nodes()
                #This is a stub, used for indexing
            end
        end
        require 'c_nokogiri_xml_schema'
        class RelaxNG < cNokogiriXmlSchema
            # read_memory(string)
            #  
            # Create a new RelaxNG from the contents of +string+
            def self.read_memory(string)
                #This is a stub, used for indexing
            end
            # from_document(doc)
            #  
            # Create a new RelaxNG schema from the Nokogiri::XML::Document +doc+
            def self.from_document(doc)
                #This is a stub, used for indexing
            end
            # validate_document(document)
            #  
            # Validate a Nokogiri::XML::Document against this RelaxNG schema.
            def validate_document(document)
                #This is a stub, used for indexing
            end
        end
        module SAX
            class Parser
            end
            class ParserContext
                # parse_io(io, encoding)
                #  
                # Parse +io+ object with +encoding+
                def self.io(p1, p2)
                    #This is a stub, used for indexing
                end
                # parse_memory(data)
                #  
                # Parse the XML stored in memory in +data+
                def self.memory(p1)
                    #This is a stub, used for indexing
                end
                # parse_file(filename)
                #  
                # Parse file given +filename+
                def self.file(p1)
                    #This is a stub, used for indexing
                end
                # parse_with(sax_handler)
                #  
                # Use +sax_handler+ and parse the current document
                def parse_with(sax_handler)
                    #This is a stub, used for indexing
                end
                # replace_entities=(boolean)
                #  
                # Should this parser replace entities?  &amp; will get converted to '&' if
                # set to true
                def replace_entities=(boolean)
                    #This is a stub, used for indexing
                end
                # replace_entities
                #  
                # Should this parser replace entities?  &amp; will get converted to '&' if
                # set to true
                def replace_entities()
                    #This is a stub, used for indexing
                end
                # recovery=(boolean)
                #  
                # Should this parser recover from structural errors? It will not stop processing
                # file on structural errors if if set to true
                def recovery=(boolean)
                    #This is a stub, used for indexing
                end
                # recovery
                #  
                # Should this parser recover from structural errors? It will not stop processing
                # file on structural errors if if set to true
                def recovery()
                    #This is a stub, used for indexing
                end
                # line
                #  
                # Get the current line the parser context is processing.
                def line()
                    #This is a stub, used for indexing
                end
                # column
                #  
                # Get the current column the parser context is processing.
                def column()
                    #This is a stub, used for indexing
                end
            end
            class PushParser
                # initialize_native(xml_sax, filename)
                #  
                # Initialize the push parser with +xml_sax+ using +filename+
                def initialize_native(xml_sax, filename)
                    #This is a stub, used for indexing
                end
                # native_write(chunk, last_chunk)
                #  
                # Write +chunk+ to PushParser. +last_chunk+ triggers the end_document handle
                def native_write(chunk, last_chunk)
                    #This is a stub, used for indexing
                end
                def options()
                    #This is a stub, used for indexing
                end
                def options=(p1)
                    #This is a stub, used for indexing
                end
            end
        end
        class Schema
            # read_memory(string)
            #  
            # Create a new Schema from the contents of +string+
            def self.read_memory(string)
                #This is a stub, used for indexing
            end
            # from_document(doc)
            #  
            # Create a new Schema from the Nokogiri::XML::Document +doc+
            def self.from_document(doc)
                #This is a stub, used for indexing
            end
            # validate_document(document)
            #  
            # Validate a Nokogiri::XML::Document against this Schema.
            def validate_document(document)
                #This is a stub, used for indexing
            end
            # validate_file(filename)
            #  
            # Validate a file against this Schema.
            def validate_file(filename)
                #This is a stub, used for indexing
            end
        end
        class SyntaxError < SyntaxError
        end
        class Text < CharacterData
            # new(content, document)
            #  
            # Create a new Text element on the +document+ with +content+
            def self.new(content, document)
                #This is a stub, used for indexing
            end
        end
        class XPathContext
            # new(node)
            #  
            # Create a new XPathContext with +node+ as the reference point.
            def self.new(node)
                #This is a stub, used for indexing
            end
            # evaluate(search_path, handler = nil)
            #  
            # Evaluate the +search_path+ returning an XML::XPath object.
            def evaluate(search_path, handler = nil)
                #This is a stub, used for indexing
            end
            # register_variable(name, value)
            #  
            # Register the variable +name+ with +value+.
            def register_variable(name, value)
                #This is a stub, used for indexing
            end
            # register_ns(prefix, uri)
            #  
            # Register the namespace with +prefix+ and +uri+.
            def register_ns(prefix, uri)
                #This is a stub, used for indexing
            end
        end
    end
    module XSLT
        # register(uri, custom_handler_class)
        #  
        # Register a class that implements custom XSLT transformation functions.
        def self.register(uri, custom_handler_class)
            #This is a stub, used for indexing
        end
        class Stylesheet
            # parse_stylesheet_doc(document)
            #  
            # Parse a stylesheet from +document+.
            def self.parse_stylesheet_doc(document)
                #This is a stub, used for indexing
            end
            # serialize(document)
            #  
            # Serialize +document+ to an xml string.
            def serialize(document)
                #This is a stub, used for indexing
            end
            # transform(document, params = [])
            #  
            # Apply an XSLT stylesheet to an XML::Document.
            # +params+ is an array of strings used as XSLT parameters.
            # returns Nokogiri::XML::Document
            # 
            # Example:
            # 
            #   doc   = Nokogiri::XML(File.read(ARGV[0]))
            #   xslt  = Nokogiri::XSLT(File.read(ARGV[1]))
            #   puts xslt.transform(doc, ['key', 'value'])
            def transform(p1, p2 = v2)
                #This is a stub, used for indexing
            end
        end
    end
end
