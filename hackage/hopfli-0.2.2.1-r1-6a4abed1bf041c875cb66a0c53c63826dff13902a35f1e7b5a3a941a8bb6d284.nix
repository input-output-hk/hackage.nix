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
      identifier = { name = "hopfli"; version = "0.2.2.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Cristian Adrián Ontivero <cristianontivero@gmail.com>";
      author = "Anantha Kumaran <ananthakumaran@gmail.com>";
      homepage = "https://github.com/ananthakumaran/hopfli";
      url = "";
      synopsis = "Bidings to Google's Zopfli compression library";
      description = "Hopfli provides a pure interface to compress data using the Zopfli library\nalgorithm.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hopfli" or (errorHandler.buildDepError "hopfli"))
          ];
          buildable = true;
        };
      };
    };
  }