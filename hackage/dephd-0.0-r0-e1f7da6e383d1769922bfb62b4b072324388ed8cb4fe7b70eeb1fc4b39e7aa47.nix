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
      specVersion = "0";
      identifier = { name = "dephd"; version = "0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "Analyze 'phred' output (.phd files)";
      description = "dephd - A simple tool for base calling and quality appraisal.\n\nReads files in phd-format (phred output), either specified individually,\nor in a directory (use the --dir option to read directories).\nThe Darcs repository is at <http://malde.org/~ketil/dephd>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dephd" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }