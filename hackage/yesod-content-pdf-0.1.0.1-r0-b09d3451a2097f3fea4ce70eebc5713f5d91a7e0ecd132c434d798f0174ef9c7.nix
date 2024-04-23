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
      identifier = { name = "yesod-content-pdf"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Alex Kyllo";
      maintainer = "alex.kyllo@gmail.com";
      author = "Alex Kyllo";
      homepage = "https://github.com/alexkyllo/yesod-content-pdf#readme";
      url = "";
      synopsis = "PDF Content Type for Yesod";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
        ];
        buildable = true;
      };
      tests = {
        "yesod-content-pdf-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yesod-content-pdf" or (errorHandler.buildDepError "yesod-content-pdf"))
          ];
          buildable = true;
        };
      };
    };
  }