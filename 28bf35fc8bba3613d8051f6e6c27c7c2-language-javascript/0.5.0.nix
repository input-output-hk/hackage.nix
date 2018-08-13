{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildtests = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "language-javascript";
        version = "0.5.0";
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
      "language-javascript" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.utf8-light)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.utf8-string)
        ];
        build-tools = [
          (hsPkgs.buildPackages.happy)
          (hsPkgs.buildPackages.happy)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (_flags.buildtests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
          ];
        };
      };
    };
  }