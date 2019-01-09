{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "checkmate"; version = "0.3.2"; };
      license = "AGPL-3.0-only";
      copyright = "(c) 2017 Hong Minhee";
      maintainer = "hong.minhee@gmail.com";
      author = "Hong Minhee";
      homepage = "https://github.com/spoqa/checkmate#readme";
      url = "";
      synopsis = "Generate checklists relevant to a given patch";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.diff-parse)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.megaparsec)
          (hsPkgs.range)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.github)
          (hsPkgs.monad-parallel)
          ];
        };
      exes = {
        "checkmate" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.diff-parse)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
            (hsPkgs.range)
            (hsPkgs.text)
            (hsPkgs.checkmate)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            ];
          };
        };
      tests = {
        "hlint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.diff-parse)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
            (hsPkgs.range)
            (hsPkgs.text)
            (hsPkgs.hlint)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.diff-parse)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
            (hsPkgs.range)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.checkmate)
            (hsPkgs.file-embed)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-text)
            (hsPkgs.temporary)
            ];
          };
        };
      };
    }