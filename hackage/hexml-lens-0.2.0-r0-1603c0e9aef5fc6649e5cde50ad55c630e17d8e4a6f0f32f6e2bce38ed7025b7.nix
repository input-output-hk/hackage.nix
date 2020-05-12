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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hexml-lens"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "All Rights Reserved";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "https://github.com/pepeiborra/hexml-lens#readme";
      url = "";
      synopsis = "Lenses for the hexml package";
      description = "Lenses for the hexml package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "courses" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
            (hsPkgs."hexml-lens" or (errorHandler.buildDepError "hexml-lens"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."hexml-lens" or (errorHandler.buildDepError "hexml-lens"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }