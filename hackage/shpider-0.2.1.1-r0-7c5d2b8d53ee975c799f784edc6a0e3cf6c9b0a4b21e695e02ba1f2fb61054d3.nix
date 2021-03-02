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
      identifier = { name = "shpider"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ozgun Ataman <ozataman@gmail.com>";
      author = "Johnny Morrice <spoon@killersmurf.com>, Ozgun Ataman";
      homepage = "http://github.com/ozataman/shpider";
      url = "";
      synopsis = "Web automation library in Haskell.";
      description = "Shpider is a web automation library for Haskell.   It allows you to quickly\nwrite crawlers, and for simple cases ( like following links ) even without\nreading the page source.\n\nIt has useful features such as turning relative links from a page into\nabsolute links, options to authorize transactions only on a given domain,\nand the option to only download html documents.\n\nIt also provides a nice syntax for filling out forms.\n\nAn example:\n\n> runShpider \$ do\n>      download \"http://apage.com\"\n>      theForm : _ <- getFormsByAction \"http://anotherpage.com\"\n>      sendForm \$ fillOutForm theForm \$ pairs \$ do\n>            \"occupation\" =: \"unemployed Haskell programmer\"\n>            \"location\" =: \"mother's house\"\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."tagsoup-parsec" or (errorHandler.buildDepError "tagsoup-parsec"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."web-encodings" or (errorHandler.buildDepError "web-encodings"))
          ];
        buildable = true;
        };
      };
    }