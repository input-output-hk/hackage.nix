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
      identifier = { name = "a50"; version = "0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "Compare genome assemblies";
      description = "a50 - a simple tool for graphing genome coverage and fragmentation.\n\nReads files of contigs, and compares them by plotting each as a line in a graph.\nThe x-axis represents contig number, the y-axis represents total (cumulative) size.\nAn ideal assembly contains a few, large contigs, thus this curve should rise steeply, and\nstop early (but at the expected genome size).  Conversely, a poor assembly consisting of\nmany small fragments will have a less steep curve extending far to the right.\n\nThe graphs produced by a50 gives a simple and easy to grasp comparison between assemblies,\nand yet produces a more detailed and informative view than the usual metrics like largest\ncontig size or N50.\n\nThe Darcs repository is at <http://malde.org/~ketil/biohaskell/a50>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "a50" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }