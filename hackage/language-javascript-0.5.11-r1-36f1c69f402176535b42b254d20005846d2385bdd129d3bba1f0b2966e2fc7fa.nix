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
      specVersion = "1.9.2";
      identifier = {
        name = "language-javascript";
        version = "0.5.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010,2011,2012 Alan Zimmerman";
      maintainer = "alan.zimm@gmail.com";
      author = "Alan Zimmerman";
      homepage = "http://github.com/alanz/language-javascript";
      url = "";
      synopsis = "Parser for JavaScript";
      description = "Parses Javascript into an Abstract Syntax Tree (AST).  Initially intended as frontend to hjsmin.\n\nNote: Version 0.5.0 breaks compatibility with prior versions, the AST has been reworked to allow\nround trip processing of JavaScript.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.alex)
          (hsPkgs.buildPackages.happy)
        ];
      };
      tests = {
        "test-language-javascript" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            (hsPkgs.array)
            (hsPkgs.utf8-light)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.utf8-string)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.language-javascript)
          ];
        };
      };
    };
  }