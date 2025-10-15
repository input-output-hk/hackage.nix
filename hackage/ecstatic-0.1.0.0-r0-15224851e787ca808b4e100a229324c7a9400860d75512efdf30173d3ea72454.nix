{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "3.0";
      identifier = { name = "ecstatic"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "slycelot@yandex.ru";
      author = "slycelote";
      homepage = "";
      url = "";
      synopsis = "Build \"as static as possible\" executable on Linux.";
      description = "The following stanzas in your cabal file will make sure that the executable\nis linked statically with all libraries except for glibc:\n\n@\nexecutable your-awesome-program\n    build-tool-depends: ecstatic:ecstatic >= 0.1.0\n    ghc-options: -pgml ecstatic\n@\n\nSee README.md for background and more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "ecstatic" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ecstatic" or (errorHandler.buildDepError "ecstatic"))
          ];
          buildable = true;
        };
      };
    };
  }