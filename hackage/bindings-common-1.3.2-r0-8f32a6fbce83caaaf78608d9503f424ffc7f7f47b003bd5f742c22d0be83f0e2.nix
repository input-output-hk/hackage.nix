{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "bindings-common"; version = "1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Maurício C. Antunes <mauricio.antunes@gmail.com>";
      author = "Maurício C. Antunes";
      homepage = "http://bitbucket.org/mauricio/bindings-common";
      url = "";
      synopsis = "Preprocessor DSL for low level FFI.";
      description = "Packages named @bindings-*@ contain low level bindings to well\nknown libraries, as a resource to be used by developers of\nhigher level modules. This @bindings-common@ package provides\n@hsc2hs@ macros that allows writing code for such low level\nbindings that is easy to write, read and maintain, while\nkeeping names and functionality as close as possible to the\nbase library. These macros can be used as a simple alternative\nto, say, @c2hs@, or to @hsc2hs@ original macros. Bindings\nfor the standard C library are also provided, and its source\ncode shows how most macros are supposed to be used. More\nexamples and reference documentation can be found at project\nhomepage.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }