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
      identifier = { name = "sgrep"; version = "0.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "http://blog.malde.org/";
      url = "";
      synopsis = "Sgrep - grep Fasta files for sequences matching a regular expression";
      description = "This is a simple utility to extract sequences from Fasta files. It\nexpects its first parameter to be a regular expression, and its second\nto be a Fasta-formatted file.  It will then output all sequences matching\nthe regexp to standard output.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sgrep" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            ];
          buildable = true;
          };
        };
      };
    }