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
      specVersion = "3.0";
      identifier = { name = "pretty-html"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2022 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/pretty-html";
      url = "";
      synopsis = "Produce nice human-readable HTML";
      description = "An HTML-building library that gives you some control over\nhow the HTML is rendered, to produce human-readable results.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      sublibs = {
        "pretty-html-paths" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
        };
      };
      tests = {
        "test-pretty-html" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pretty-html" or (errorHandler.buildDepError "pretty-html"))
            (hsPkgs."pretty-html".components.sublibs.pretty-html-paths or (errorHandler.buildDepError "pretty-html:pretty-html-paths"))
          ];
          buildable = true;
        };
      };
    };
  }