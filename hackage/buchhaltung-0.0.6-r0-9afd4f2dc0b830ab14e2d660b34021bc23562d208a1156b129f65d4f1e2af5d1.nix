{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "buchhaltung"; version = "0.0.6"; };
      license = "MIT";
      copyright = "";
      maintainer = "Johannes Gerer <oss@johannesgerer.com>";
      author = "Johannes Gerer";
      homepage = "http://johannesgerer.com/buchhaltung";
      url = "";
      synopsis = "Automates most of your plain text accounting data entry in ledger format.";
      description = "Automatic import and deduplication (from CSV\\/FinTS\\/HBCI\\/OFX), bayesian account matching, and efficient manual entry of <http://plaintextaccounting.org/ ledger> transactions.\n\nSee <https://github.com/johannesgerer/buchhaltung Readme> on Github.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Decimal" or ((hsPkgs.pkgs-errors).buildDepError "Decimal"))
          (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
          (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
          (hsPkgs."hledger" or ((hsPkgs.pkgs-errors).buildDepError "hledger"))
          (hsPkgs."hledger-lib" or ((hsPkgs.pkgs-errors).buildDepError "hledger-lib"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa-text"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "buchhaltung" = {
          depends = [
            (hsPkgs."Decimal" or ((hsPkgs.pkgs-errors).buildDepError "Decimal"))
            (hsPkgs."ListLike" or ((hsPkgs.pkgs-errors).buildDepError "ListLike"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."boxes" or ((hsPkgs.pkgs-errors).buildDepError "boxes"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."formatting" or ((hsPkgs.pkgs-errors).buildDepError "formatting"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."hledger" or ((hsPkgs.pkgs-errors).buildDepError "hledger"))
            (hsPkgs."hledger-lib" or ((hsPkgs.pkgs-errors).buildDepError "hledger-lib"))
            (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
            (hsPkgs."regex-tdfa-text" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa-text"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }