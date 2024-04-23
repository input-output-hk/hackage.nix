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
      identifier = { name = "estreps"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/";
      url = "";
      synopsis = "Repeats from ESTs";
      description = "* rselect - select a random set of sequences from a FASTA file, optinally\nwith random orientation (forward/reverse complement).\n* reps    - extract exact k-word repeats based that occur in\nsequences grouped in different clusters.\n\nThe Darcs repository is at: <http://malde.org/~ketil/biohaskell/estreps>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rselect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "reps" = { buildable = true; };
      };
    };
  }