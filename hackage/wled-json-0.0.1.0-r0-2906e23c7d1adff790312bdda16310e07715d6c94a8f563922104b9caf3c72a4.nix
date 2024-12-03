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
      identifier = { name = "wled-json"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Andreas Ländle";
      maintainer = "Andreas Ländle";
      author = "Andreas Ländle";
      homepage = "https://github.com/alaendle/wled-json#readme";
      url = "";
      synopsis = "Convenient interface for interacting with WLED devices";
      description = "Please see the README on GitHub at <https://github.com/alaendle/wled-json#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."barbies" or (errorHandler.buildDepError "barbies"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deriving-aeson" or (errorHandler.buildDepError "deriving-aeson"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
        ];
        buildable = true;
      };
      exes = {
        "wled-json-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."rhine" or (errorHandler.buildDepError "rhine"))
            (hsPkgs."wled-json" or (errorHandler.buildDepError "wled-json"))
          ];
          buildable = true;
        };
      };
      tests = {
        "wled-json-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."wled-json" or (errorHandler.buildDepError "wled-json"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }