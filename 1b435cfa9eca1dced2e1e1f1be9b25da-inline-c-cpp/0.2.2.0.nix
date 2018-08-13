{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "inline-c-cpp";
        version = "0.2.2.0";
      };
      license = "MIT";
      copyright = "(c) 2015-2016 FP Complete Corporation, (c) 2017 Francesco Mazzoli";
      maintainer = "francesco@fpcomplete.com";
      author = "Francesco Mazzoli";
      homepage = "";
      url = "";
      synopsis = "Lets you embed C++ code into Haskell.";
      description = "Utilities to inline C++ code into Haskell using inline-c.  See\ntests for example on how to build.";
      buildType = "Simple";
    };
    components = {
      "inline-c-cpp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
          (hsPkgs.template-haskell)
          (hsPkgs.safe-exceptions)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.inline-c)
            (hsPkgs.inline-c-cpp)
            (hsPkgs.safe-exceptions)
            (hsPkgs.hspec)
          ];
          libs = [ (pkgs.stdc++) ];
        };
      };
    };
  }