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
    flags = { buildexamples = false; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "tagchup"; version = "0.4.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <tagchup@henning-thielemann.de>";
      author = "Henning Thielemann <tagchup@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/tagchup/";
      url = "";
      synopsis = "alternative package for processing of tag soups";
      description = "Tagchup is a package for processing XML, HTML, XHTML documents\nthat can also be malformed.\nIt allows parsing, formatting and retrieval of such document.\nAll functions should be as lazy as possible.\n\nI use a custom data structure based on types from xml-basic\nfor easy interchange with the wraxml package.\n\nIts lazy monadic parser should be more comprehensible and easier to extend\nthan the one of tagsoup-0.6.\nIt also handles XML processing instructions and CDATA sections correctly.\n\nThe name Tagchup resembles Ketchup.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml-basic" or (errorHandler.buildDepError "xml-basic"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "tagchuptest" = {
          buildable = if !flags.buildtests then false else true;
          };
        "tagchupspeed" = {
          depends = (pkgs.lib).optional (flags.buildtests) (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"));
          buildable = if flags.buildtests then true else false;
          };
        "validate-tagchup" = {
          buildable = if !flags.buildexamples then false else true;
          };
        "escape-html" = {
          depends = (pkgs.lib).optional (flags.buildexamples) (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"));
          buildable = if flags.buildexamples then true else false;
          };
        "strip-html" = {
          buildable = if !flags.buildexamples then false else true;
          };
        };
      };
    }