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
      identifier = { name = "shpider"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Johnny Morrice <spoon@killersmurf.com>";
      author = "Johnny Morrice";
      homepage = "http://www.killersmurf.com/projects/shpider";
      url = "";
      synopsis = "Web automation library in Haskell.";
      description = "Shpider is a web automation library for Haskell.   It allows you to quickly write crawlers, and for simple cases ( like following links ) even without reading the page source.\n\nIt has useful features such as turning relative links from a page into absolute links, options to authorize transactions only on a given domain, and the option to only downloading html documents.\n\nIt also provides a nice syntax for filling out forms.\n\nAn example:\n\n> runShpider $ do\n>      download \"http://apage.com\"\n>      theForm : _ <- getFormsByAction \"http://anotherpage.com\"\n>      sendForm $ fillOutForm theForm $ pairs $ do\n>            \"occupation\" =: \"unemployed Haskell programmer\"\n>            \"location\" =: \"mother's house\"\n\nShpider contains a patched version of the curl package, to fix cookie handling.  The curl licence is therefore distributed with this package.";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."tagsoup-parsec" or (errorHandler.buildDepError "tagsoup-parsec"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = [ (pkgs."curl" or (errorHandler.sysDepError "curl")) ];
        buildable = true;
      };
    };
  }