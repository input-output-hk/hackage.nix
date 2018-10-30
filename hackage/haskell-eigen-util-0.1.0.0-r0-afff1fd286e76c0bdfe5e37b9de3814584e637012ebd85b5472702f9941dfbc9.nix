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
        name = "haskell-eigen-util";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Dilawar Singh";
      maintainer = "dilawars@ncbs.res.in";
      author = "Dilawar Singh";
      homepage = "https://github.com/dilawar/haskell-eigen-util#Readme.md";
      url = "";
      synopsis = "Some utility functions for haskell-eigen library";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.eigen)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "haskell-eigen-util-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-eigen-util)
          ];
        };
      };
    };
  }