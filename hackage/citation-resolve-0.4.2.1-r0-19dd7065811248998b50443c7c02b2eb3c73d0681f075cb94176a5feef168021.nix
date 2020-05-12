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
      specVersion = "1.8";
      identifier = { name = "citation-resolve"; version = "0.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "https://github.com/nushio3/citation-resolve";
      url = "";
      synopsis = "convert document IDs such as DOI, ISBN, arXiv ID to bibliographic reference.";
      description = "This modules provides a way to convert document identifiers, such\nas DOIs, ISBNs, arXiv IDs to bibliographic references.\n\nEach type of identifiers will be converted via internet services\nto a bibliographic record of type 'Text.CSL.Reference' , which in\nturn can be rendered in various format using @citeproc-hs@ package\n<http://hackage.haskell.org/package/citeproc-hs> .\n\nMoreover, the server responses are cached in a local database,\nmaking the server load as little as possible.\n\nAt the moment, citation-resolve requires \"xsltproc\" executable\nto parse xml, in order to resolve ISBNs.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."citeproc-hs" or (errorHandler.buildDepError "citeproc-hs"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }