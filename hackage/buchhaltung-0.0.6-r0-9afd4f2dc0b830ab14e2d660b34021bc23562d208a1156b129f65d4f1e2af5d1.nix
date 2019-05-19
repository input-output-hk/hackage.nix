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
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.Decimal)
          (hsPkgs.ListLike)
          (hsPkgs.MissingH)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.boxes)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.edit-distance)
          (hsPkgs.file-embed)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.haskeline)
          (hsPkgs.hint)
          (hsPkgs.hledger)
          (hsPkgs.hledger-lib)
          (hsPkgs.lifted-base)
          (hsPkgs.megaparsec)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.process)
          (hsPkgs.regex-compat)
          (hsPkgs.regex-tdfa)
          (hsPkgs.regex-tdfa-text)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.strict)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "buchhaltung" = {
          depends = [
            (hsPkgs.Decimal)
            (hsPkgs.ListLike)
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.boxes)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.cassava)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.edit-distance)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.formatting)
            (hsPkgs.hashable)
            (hsPkgs.haskeline)
            (hsPkgs.hint)
            (hsPkgs.hledger)
            (hsPkgs.hledger-lib)
            (hsPkgs.lifted-base)
            (hsPkgs.megaparsec)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.regex-compat)
            (hsPkgs.regex-tdfa)
            (hsPkgs.regex-tdfa-text)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.strict)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }