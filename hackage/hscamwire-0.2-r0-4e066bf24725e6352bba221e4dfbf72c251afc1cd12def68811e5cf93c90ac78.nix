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
      specVersion = "1.2";
      identifier = { name = "hscamwire"; version = "0.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "fred.ross@epfl.ch";
      author = "Frederick Ross";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to IIDC1394 cameras, via Camwire";
      description = "These are idiomatic bindings to the Camwire library, which interfaces with IIDC1394-compliant cameras on Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        buildable = true;
        };
      };
    }