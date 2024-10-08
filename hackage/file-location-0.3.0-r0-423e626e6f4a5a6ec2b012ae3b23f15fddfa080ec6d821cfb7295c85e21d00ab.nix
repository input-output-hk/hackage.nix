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
      specVersion = "1.6";
      identifier = { name = "file-location"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "greg@gregweber.info";
      author = "Greg Weber";
      homepage = "https://github.com/gregwebs/FileLocation.hs";
      url = "";
      synopsis = "common functions that show file location information";
      description = "Common debugging/error/exception functions that give file location information\n\n> $(err \"OH NO!\")\n>\n> main:Main main.hs:16:1 OH NO!\n\nNotice how it displays package:module file:line:character\nIt exposes the functions err (error), undef (undefined), and trc (Debug.Trace.trace). All of these behave the same as their normal counterpart but also spit out a location.\n\nHere is my favorite helper, debug, which is like trace but just show the value.\n\n> debug [1,2,3]\n>\n> DEBUG: [1,2,3]\n> [1,2,3]\n\nAnd The Template Haskell version.\n\n> $(dbg) [1,2,3]\n>\n> DEBUG main:Main main.hs:1:3 [1,2,3]\n> [1,2,3]\n\nAlso there is a version of thrwIO that gives location information\n> ($(thrwIO) $ AException) `catch` \\e -> putStrLn (\"Caught \" ++ show (e :: AException))\n>\n> Caught AException \"main:Main test/main.hs:25:6\"\n\nSee module for a listing of all the functions with short descriptions, and the homepage for some more examples https://github.com/gregwebs/ErrorLocation.hs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
        ];
        buildable = true;
      };
    };
  }