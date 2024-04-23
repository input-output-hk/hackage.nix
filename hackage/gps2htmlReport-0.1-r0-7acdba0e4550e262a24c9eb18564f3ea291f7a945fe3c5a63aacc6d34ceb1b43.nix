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
      specVersion = "1.2";
      identifier = { name = "gps2htmlReport"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rob Stewart <robstewart57@googlemail.com>";
      author = "Rob Stewart <robstewart57@googlemail.com>";
      homepage = "https://github.com/robstewart57/Gps2HtmlReport";
      url = "";
      synopsis = "GPS to HTML Summary Report";
      description = "Generate a HTML summary report of GPS tracks";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."html" or (errorHandler.buildDepError "html"))
          (hsPkgs."gps" or (errorHandler.buildDepError "gps"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."cairo" or (errorHandler.buildDepError "cairo"))
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."xsd" or (errorHandler.buildDepError "xsd"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."gd" or (errorHandler.buildDepError "gd"))
        ];
        buildable = true;
      };
      exes = { "gps2htmlReport" = { buildable = true; }; };
    };
  }