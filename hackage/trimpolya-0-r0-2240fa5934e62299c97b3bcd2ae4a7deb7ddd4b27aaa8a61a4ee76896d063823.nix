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
      identifier = { name = "trimpolya"; version = "0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "Search for, annotate and trim poly-A tail";
      description = "trimpolya - a very simple tool for identifying and annotating poly-A tails\nand trimming following sequence.\n\nUsage: trimpolya input.fasta input.qual\n\nDetailed description of the method is at <http://blog.malde.org/index.php/2009/12/14/searching-for-polya-tails/>,\ndarcs repository is at <http://malde.org/~ketil/biohaskell/trimpolya>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "trimpolya" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."simpleargs" or (errorHandler.buildDepError "simpleargs"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }