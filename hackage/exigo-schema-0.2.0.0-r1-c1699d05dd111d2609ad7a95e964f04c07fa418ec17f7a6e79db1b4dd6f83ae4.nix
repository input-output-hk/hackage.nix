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
      specVersion = "1.12";
      identifier = { name = "exigo-schema"; version = "0.2.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2020 phlummox";
      maintainer = "exigo-schema@phlummox.dev";
      author = "phlummox";
      homepage = "https://github.com/phlummox/exigo-schema#readme";
      url = "";
      synopsis = "database schema for exigo marking/assessment tools";
      description = "Please see the README on GitHub at <https://github.com/phlummox/exigo-schema#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          ];
        buildable = true;
        };
      tests = {
        "exigo-schema-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exigo-schema" or (errorHandler.buildDepError "exigo-schema"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }