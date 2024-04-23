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
      identifier = { name = "utf8-prelude"; version = "0.1.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Péter Diviánszky";
      maintainer = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      author = "Péter Diviánszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Variants of Prelude and System.IO using UTF8 text I/O operations and an UTF8 testing tool";
      description = "If you want your Haskell code to have UTF8 text I/O then use libraries which have UTF8 text I/O.\nIn case of Prelude with this package only three mechanical steps needed:\n\n* In all modules import Prelude explicitly and replace every occurrence of \"Prelude\" with \"UTF8Prelude\".\n\n* Use the NoImplicitPrelude language extension.\n\n* In all modules replace every occurrence of \"System.IO\" with \"System.UTF8IO\".\n\nutf8-test tests several functions regarding UTF8 text I/O.\nNote: utf8-test creates a file named writeFile_test.txt (5,3K) in the current working directory.\n\nutf8-prelude is based on utf8-string:\n<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/utf8-string/index.html>\n\nThis package will be obsolete *after* GHC 6.10:\n<http://hackage.haskell.org/trac/ghc/wiki/Status/Releases>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
      exes = { "utf8-test" = { buildable = true; }; };
    };
  }