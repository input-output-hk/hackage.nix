{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      static = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "checkmate";
        version = "0.4.0";
      };
      license = "AGPL-3.0-only";
      copyright = "© 2017–2018 Hong Minhee";
      maintainer = "hong.minhee@gmail.com";
      author = "Hong Minhee";
      homepage = "https://github.com/dahlia/checkmate#readme";
      url = "";
      synopsis = "Generate checklists relevant to a given patch";
      description = "";
      buildType = "Simple";
    };
    components = {
      "checkmate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.diff-parse)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.github)
          (hsPkgs.megaparsec)
          (hsPkgs.monad-parallel)
          (hsPkgs.text)
        ];
      };
      exes = {
        "checkmate" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.checkmate)
            (hsPkgs.diff-parse)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.megaparsec)
            (hsPkgs.optparse-applicative)
            (hsPkgs.process)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.diff-parse)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hlint)
            (hsPkgs.megaparsec)
            (hsPkgs.text)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.checkmate)
            (hsPkgs.diff-parse)
            (hsPkgs.directory)
            (hsPkgs.file-embed)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.interpolatedstring-perl6)
            (hsPkgs.megaparsec)
            (hsPkgs.quickcheck-text)
            (hsPkgs.temporary)
            (hsPkgs.text)
          ];
        };
      };
    };
  }