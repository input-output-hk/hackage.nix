{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "simpleargs";
        version = "0.2.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://malde.org/~ketil/simpleargs";
      url = "";
      synopsis = "Provides a more flexible getArgs function with better error reporting.";
      description = "The provided getArgs returns an arbitrary tuple of values instead of a\nlist of Strings.  This means that the number and type (i.e. parseability)\nof parameters are checked, and reported to the user.  The module is not\na substitute for proper error handling (use \"System.Console.GetOpt\" for that),\nbut is useful for making quick and dirty command line tools a bit less dirty,\nwithout sacrificing the quick part.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }