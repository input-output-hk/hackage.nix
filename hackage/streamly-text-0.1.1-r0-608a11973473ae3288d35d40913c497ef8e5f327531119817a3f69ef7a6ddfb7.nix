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
      specVersion = "2.4";
      identifier = { name = "streamly-text"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "streamly@composewell.com";
      author = "Composewell Technologies";
      homepage = "";
      url = "";
      synopsis = "Efficient conversion between Streamly Arrays and Text";
      description = "Zero-overhead interoperability between the @Array@ type from the\n@streamly-core@ package and the @Text@ type from the @text@ package.\n\nProvides efficient conversion in both directions without copying.\n\nPlease see the README at <https://github.com/composewell/streamly-text>\nfor more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."streamly-core" or (errorHandler.buildDepError "streamly-core"))
            (hsPkgs."streamly-text" or (errorHandler.buildDepError "streamly-text"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          ];
          buildable = true;
        };
      };
    };
  }