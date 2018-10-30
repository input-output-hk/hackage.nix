{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "bindings-common";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-common";
      url = "";
      synopsis = "Preprocessor combinator library for low level FFI.";
      description = "Packages named @bindings-*@ contain low level bindings to well\nknown libraries, as a resource to be used by developers of\nhigher level modules. This @bindings-common@ package provides\n@hsc2hs@ macros that allows writing code for such low level\nbindings that is easy to read an maintain, while keeping names\nand functionality as close as possible to the base library.\nThese macros can be used as a simple alternative to, say,\n@c2hs@, or to @hsc2hs@ original macros. At this moment, there's\nno good documentation on how to use them, so please\nread the code for \"Bindings.C\" to understand how they work, or\njust fill question\\/sugestion reports in the bug tracking web\nsite.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }