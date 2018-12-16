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
        name = "singleton-dict";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Arie Middelkoop";
      maintainer = "amiddelk@gmail.com";
      author = "Arie Middelkoop";
      homepage = "https://github.com/amiddelk/singleton-dict#readme";
      url = "";
      synopsis = "Typelevel balanced search trees via a singletonized Data.Map";
      description = "This package provides a typelevel balanced search tree based on an ancient version of Data.Map,\noriginating from the uulib package. I used this older version as it uses relatively \"simple\"\nHaskell, and thus is singletonized relatively straightforwardly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.singletons)
        ];
      };
    };
  }