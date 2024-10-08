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
      identifier = { name = "utf8-prelude"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Peter Divianszky";
      maintainer = "Peter Divianszky <divip@aszt.inf.elte.hu>";
      author = "Peter Divianszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Prelude and System.IO using UTF8 encoding";
      description = "This package contains the \"UTF8Prelude\" and \"System.UTF8IO\" library modules and the 'utf8-test' executable.\n\nThe 'utf8-test' executable tests some functions (@readFile@, @writeFile@, @putStrLn@).\n\nNote: 'utf8-test' creates a file named 'writeFile_test.txt' in the current working directory.\n\nThis package is based on the 'utf8-string' package: <http://hackage.haskell.org/cgi-bin/hackage-scripts/package/utf8-string>.\n\nThis package will be obsolate with GHC if GHC will have porper unicode support for text I/O\n(planned beyond GHC 6.10, see <http://hackage.haskell.org/trac/ghc/wiki/Status/Releases>).";
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