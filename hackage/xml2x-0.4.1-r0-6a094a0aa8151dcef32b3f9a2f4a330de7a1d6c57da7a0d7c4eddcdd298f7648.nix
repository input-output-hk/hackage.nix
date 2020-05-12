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
      identifier = { name = "xml2x"; version = "0.4.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Ketil Malde <ketil@malde.org>";
      author = "Ketil Malde";
      homepage = "";
      url = "";
      synopsis = "Convert BLAST output in XML format to CSV or HTML";
      description = "xml2x - convert blast output in XML format, either to a (csv)\ntable suitable for e.g. importing into Excel or OOCalc, or\nto HTML.  Optionally annotating the output with GO terms.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "xml2x" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bio" or (errorHandler.buildDepError "bio"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }