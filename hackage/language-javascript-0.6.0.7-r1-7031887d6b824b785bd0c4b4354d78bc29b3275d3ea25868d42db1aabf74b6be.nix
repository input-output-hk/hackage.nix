{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = { name = "language-javascript"; version = "0.6.0.7"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2015 Alan Zimmerman, 2015 Erik de Castro Lopo";
      maintainer = "Erik de Castro Lopo <erikd@mega-nerd.com>";
      author = "Alan Zimmerman";
      homepage = "http://github.com/erikd/language-javascript";
      url = "";
      synopsis = "Parser for JavaScript";
      description = "Parses Javascript into an Abstract Syntax Tree (AST).  Initially intended as frontend to hjsmin.\n\nNote: Version 0.5.0 breaks compatibility with prior versions, the AST has been reworked to allow\nround trip processing of JavaScript.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.utf8-string)
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          ];
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
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