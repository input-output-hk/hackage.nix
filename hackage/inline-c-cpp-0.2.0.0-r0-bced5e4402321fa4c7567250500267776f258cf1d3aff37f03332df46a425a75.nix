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
      specVersion = "1.10";
      identifier = {
        name = "inline-c-cpp";
        version = "0.2.0.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.inline-c)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.inline-c-cpp)
          ];
          libs = [ (pkgs."stdc++") ];
        };
      };
    };
  }