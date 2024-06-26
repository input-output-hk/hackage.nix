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
      specVersion = "1.0";
      identifier = { name = "simpleargs"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "";
      author = "Ketil Malde <ketil@malde.org>";
      homepage = "http://malde.org/~ketil/simpleargs";
      url = "";
      synopsis = "Provides a more flexible getArgs function with better error reporting.";
      description = "The provided getArgs returns an arbitrary tuple of values instead of a\nlist of Strings.  This means that the number and type (i.e. parseability)\nof parameters are checked, and reported to the user.  The module is not\na substitute for proper error handling (use System.Console.GetOpt for that),\nbut is useful for making quick and dirty command line tools a bit less dirty,\nwithout sacrificing the quick part.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }