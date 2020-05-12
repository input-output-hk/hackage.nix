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
      identifier = { name = "quickcheck-text"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2015 Sharif Olorin";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/olorin/quickcheck-text";
      url = "";
      synopsis = "Alternative arbitrary instance for Text";
      description = "The usual Arbitrary instance for Text\n(in\n<https://hackage.haskell.org/package/quickcheck-instances quickcheck-instances>)\nonly has single-byte\ninstances and so isn't an ideal representation of a valid UTF-8\ncharacter. This package has generators for one-, two- and three-byte\nUTF-8 characters (all that are currently in use).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."quickcheck-text" or (errorHandler.buildDepError "quickcheck-text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }