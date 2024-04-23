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
      identifier = { name = "genvalidity"; version = "0.5.0.3"; };
      license = "MIT";
      copyright = "Copyright: (c) 2016-2018 Tom Sydney Kerckhove";
      maintainer = "syd.kerckhove@gmail.com";
      author = "Tom Sydney Kerckhove";
      homepage = "https://github.com/NorfairKing/validity#readme";
      url = "";
      synopsis = "Testing utilities for the validity library";
      description = "Note: There are companion instance packages for this library:\n\n* <https://hackage.haskell.org/package/genvalidity-aeson genvalidity-aeson>\n\n* <https://hackage.haskell.org/package/genvalidity-bytestring genvalidity-bytestring>\n\n* <https://hackage.haskell.org/package/genvalidity-containers genvalidity-containers>\n\n* <https://hackage.haskell.org/package/genvalidity-path genvalidity-path>\n\n* <https://hackage.haskell.org/package/genvalidity-scientific genvalidity-scientific>\n\n* <https://hackage.haskell.org/package/genvalidity-text genvalidity-text>\n\n* <https://hackage.haskell.org/package/genvalidity-time genvalidity-time>\n\n* <https://hackage.haskell.org/package/genvalidity-unordered-containers genvalidity-unordered-containers>\n\n* <https://hackage.haskell.org/package/genvalidity-uuid genvalidity-uuid>\n\n* <https://hackage.haskell.org/package/genvalidity-vector genvalidity-vector>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."validity" or (errorHandler.buildDepError "validity"))
        ];
        buildable = true;
      };
      tests = {
        "genvalidity-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."genvalidity" or (errorHandler.buildDepError "genvalidity"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }