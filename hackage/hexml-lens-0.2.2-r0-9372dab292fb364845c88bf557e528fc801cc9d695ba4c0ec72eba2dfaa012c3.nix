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
      specVersion = "2.2";
      identifier = { name = "hexml-lens"; version = "0.2.2"; };
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
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "courses" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
            (hsPkgs."hexml" or (errorHandler.buildDepError "hexml"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hexml-lens" or (errorHandler.buildDepError "hexml-lens"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
            ];
          buildable = true;
          };
        };
      };
    }