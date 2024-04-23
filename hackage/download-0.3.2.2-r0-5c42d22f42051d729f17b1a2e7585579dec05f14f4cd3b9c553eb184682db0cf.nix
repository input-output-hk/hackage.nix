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
      specVersion = "1.8";
      identifier = { name = "download"; version = "0.3.2.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011, Don Stewart <dons00@gmail.com>";
      maintainer = "Sibi Prabakaran <sibi@psibi.in>, Don Stewart <dons00@gmail.com>";
      author = "Don Stewart";
      homepage = "https://github.com/psibi/download";
      url = "";
      synopsis = "High-level file download based on URLs";
      description = "High-level file download based on URLs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."download" or (errorHandler.buildDepError "download"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }