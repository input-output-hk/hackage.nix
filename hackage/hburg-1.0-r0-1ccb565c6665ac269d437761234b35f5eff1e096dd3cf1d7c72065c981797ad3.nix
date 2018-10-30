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
      specVersion = "0";
      identifier = {
        name = "hburg";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "igor@bytelabs.org";
      author = "Igor Boehm <igor@bytelabs.org>";
      homepage = "http://www.bytelabs.org/hburg.html";
      url = "";
      synopsis = "Haskell Bottom Up Rewrite Generator";
      description = "HBURG has been designed to produce a code generator for a\ntarget machine given a specification of an abstract syntax\ntree of a program, as well as a specification of the target\nmachine itself. Its goals are the following:\n\n* Provide a powerful tree pattern matching specification\nlanguage with simplicity and easy readability in mind.\n\n* Perform good static analysis aiding during the design of\ngrammar specifications.\n\n* Provide back-ends which generate code for various languages\nfrom a specification, ready to be plugged into a back-end\ncompiler infrastructure. Currently Java Code is being generated.\n\nSee \"Homepage\" for an example on how to integrate the generated\ncode into a compiler.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "hburg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }