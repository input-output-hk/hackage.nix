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
      identifier = { name = "basen-bytestring"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 William Fisher";
      maintainer = "williamsykesfisher@gmail.com";
      author = "William Fisher";
      homepage = "https://github.com/FilWisher/basen-bytestring#readme";
      url = "";
      synopsis = "";
      description = "Base-N ByteStrings for base{16,32,58,64}";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
      tests = {
        "basen-bytestring-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."basen-bytestring" or (errorHandler.buildDepError "basen-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
    };
  }