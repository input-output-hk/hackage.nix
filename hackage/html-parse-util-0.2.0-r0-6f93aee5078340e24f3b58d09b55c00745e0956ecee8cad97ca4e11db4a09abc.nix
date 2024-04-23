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
      specVersion = "1.12";
      identifier = { name = "html-parse-util"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2006–2019  Neil Mitchell, 2020–2022  Tony Zorman";
      maintainer = "soliditsallgood@mailbox.org";
      author = "Neil Mitchell (TagSoup), Tony Zorman (port to html-parse)";
      homepage = "https://github.com/slotThe/html-parse-util#readme";
      url = "";
      synopsis = "Utility functions for working with html-parse";
      description = "See README.md <https://gitlab.com/slotThe/html-parse-utils/-/blob/master/README.md here>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."html-parse" or (errorHandler.buildDepError "html-parse"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }