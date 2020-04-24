{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bibdb"; version = "0.3.0"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or ((hsPkgs.pkgs-errors).buildDepError "microlens-mtl"))
            (hsPkgs."microlens-th" or ((hsPkgs.pkgs-errors).buildDepError "microlens-th"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."bibtex" or ((hsPkgs.pkgs-errors).buildDepError "bibtex"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
            (hsPkgs."download-curl" or ((hsPkgs.pkgs-errors).buildDepError "download-curl"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
            (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
            ];
          buildable = true;
          };
        };
      };
    }