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
      identifier = { name = "imbib"; version = "1.2.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jeanphilippe.bernardy@gmail.com";
      author = "Jean-Philippe Bernardy";
      homepage = "";
      url = "";
      synopsis = "Minimalistic .bib reference manager.";
      description = "The package has three parts:\n\n1. A very minimial gui [currently not buildable], featuring:\n\n- Drop of bibtex snippets to add a reference to your bibtex.\n- Drop of pdf to save a fulltext version and a link in the bibtex.\n- Double click on entry to open fulltex.\n- Double right-click to open the entry in editor.\n- Search box (author/title).\n\nA simplistic configuration file is given in ~/.imbib; an example file\nis bundled with the package.\n\n2. A library to manipulate bib files and do related management tasks.\n\nThe package contains some helper functions to manipultate .bib files\nen masse.  For example one function can help detecting duplicates in\nthe bibtex file.\n\n3. A batch processor for bib files.\n\nA simplistic CLI for the above library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bibtex" or (errorHandler.buildDepError "bibtex"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsek" or (errorHandler.buildDepError "parsek"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "imbibatch" = {
          depends = [
            (hsPkgs."imbib" or (errorHandler.buildDepError "imbib"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."groom" or (errorHandler.buildDepError "groom"))
            ];
          buildable = true;
          };
        };
      };
    }