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
        name = "hjsmin";
        version = "0.0.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alan Zimmerman <alan.zimm@gmail.com>";
      author = "Alan Zimmerman <alan.zimm@gmail.com>";
      homepage = "http://github.com/alanz/hjsmin";
      url = "";
      synopsis = "Haskell implementation of a javascript minifier";
      description = "Reduces size of javascript files by stripping out extraneous whitespace and\nother syntactic elements, without changing the semantics.";
      buildType = "Simple";
    };
    components = {
      "hjsmin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.language-javascript)
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