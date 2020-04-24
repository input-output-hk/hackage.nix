{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "doi"; version = "0.0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/doi";
      url = "";
      synopsis = "Automatic Bibtex and fulltext of scientific articles";
      description = "Extract Bibtex entries and download fulltext of scientific articles automatically for a given DOI or URL\n\nSee <https://github.com/johannesgerer/doi Readme> on Github.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bibtex" or ((hsPkgs.pkgs-errors).buildDepError "bibtex"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."urlencoded" or ((hsPkgs.pkgs-errors).buildDepError "urlencoded"))
          ];
        buildable = true;
        };
      exes = {
        "doi" = {
          depends = [
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bibtex" or ((hsPkgs.pkgs-errors).buildDepError "bibtex"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."urlencoded" or ((hsPkgs.pkgs-errors).buildDepError "urlencoded"))
            ];
          buildable = true;
          };
        };
      };
    }