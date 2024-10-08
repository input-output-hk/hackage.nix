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
      identifier = { name = "sxml"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "© 2016 ARJANEN Loïc Jean David";
      maintainer = "ARJANEN Loïc Jean David <arjanen.loic@gmail.com>";
      author = "ARJANEN Loïc Jean David <arjanen.loic@gmail.com>";
      homepage = "http://blog.luigiscorner.com/";
      url = "";
      synopsis = "A SXML-parser";
      description = "This library parses and write <http://okmij.org/ftp/Scheme/SXML.html SXML> files, using datatypes from the <https://hackage.haskell.org/package/xml-types xml-types> package to represent their structure. It currently only features a DOM-style parser.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
        ];
        buildable = true;
      };
    };
  }