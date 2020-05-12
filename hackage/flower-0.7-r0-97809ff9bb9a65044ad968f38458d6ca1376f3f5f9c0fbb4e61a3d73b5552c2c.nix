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
      identifier = { name = "flower"; version = "0.7"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://biohaskell.org/Applications/Flower";
      url = "";
      synopsis = "Analyze 454 flowgrams  (.SFF files)";
      description = "flower - FLOWgram ExtractoR tools\n\nThe flower executable reads files in SFF-format and produces various output,\nincluding sequences with quality, or flowgram data in tabular format.  By default,\nit outputs a textual representation of the data in the SFF-file, much like\n'sffinfo' from Roche does.\n\nThe fselect executable extracts reads from SFF-files, generating a new\nSFF-file with a subset of the reads based on various criteria.\n\nSometimes SFF files will appear to be corrupted, with all-zero blocks in the\nfile. The frecover program ignores these and tries to resync with the file after an\ninvalid region.  This was likely a one-time bug in the 454 software, so this program\nis probably not so useful any more.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "flower" = {
          depends = [
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "flowselect" = {
          depends = [
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "frecover" = {
          depends = [
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        "frename" = {
          depends = [
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        "flowt" = {
          depends = [
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }