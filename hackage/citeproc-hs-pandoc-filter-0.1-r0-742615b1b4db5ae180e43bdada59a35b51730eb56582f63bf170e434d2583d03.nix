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
      specVersion = "1.10";
      identifier = { name = "citeproc-hs-pandoc-filter"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "andrea.rossato@unitn.it";
      author = "Andrea Rossato";
      homepage = "http://istitutocolli.org/repos/citeproc-hs-pandoc-filter/";
      url = "";
      synopsis = "A Pandoc filter for processing bibliographic references with citeproc-hs";
      description = "citeproc-hs is a library for rendering\nbibliographic reference citations into a variety\nof styles using a macro language called Citation\nStyle Language (CSL). More details on CSL can be\nfound here:\n<http://citationstyles.org/>.\n\nciteproc-hs-pandoc-filter is a replacement of\nciteproc-pandoc which uses citeproc-hs for\nprocessing citations.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "citeproc-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."citeproc-hs" or (errorHandler.buildDepError "citeproc-hs"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
            ];
          buildable = true;
          };
        };
      };
    }