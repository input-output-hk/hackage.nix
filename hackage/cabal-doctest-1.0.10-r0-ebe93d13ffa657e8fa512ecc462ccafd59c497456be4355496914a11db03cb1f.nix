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
      specVersion = "1.10";
      identifier = { name = "cabal-doctest"; version = "1.0.10"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2017-2020 Oleg Grenrus, 2020- package maintainers";
      maintainer = "Max Ulidtko <ulidtko@gmail.com>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/ulidtko/cabal-doctest";
      url = "";
      synopsis = "A Setup.hs helper for running doctests";
      description = "As of now (end of 2021), there isn't @cabal doctest@\ncommand. Yet, to properly work, @doctest@ needs plenty of configuration.\nThis library provides the common bits for writing a custom @Setup.hs@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
    };
  }