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
      identifier = { name = "bibdb"; version = "0.5.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "coskuacay@gmail.con";
      author = "Josh Acay";
      homepage = "https://github.com/cacay/bibdb";
      url = "";
      synopsis = "A database based bibliography manager for BibTeX";
      description = "bibdb is a simple citation resolver and bibliography manager for BibTeX.\nInstead of manually copy pasting bibliographies, you specify a reference\nto the work you want to cite (by providing a DOI or a DBLP key, for example)\nin a simple domain specific language. bibdb is then responsible for fetching\nthe citations, renaming them, removing duplicates, and sorting them properly.\nFor more information, see the <https://github.com/cacay/bibdb>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bibdb" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (errorHandler.buildDepError "microlens-mtl"))
            (hsPkgs."microlens-th" or (errorHandler.buildDepError "microlens-th"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."bibtex" or (errorHandler.buildDepError "bibtex"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."download-curl" or (errorHandler.buildDepError "download-curl"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }