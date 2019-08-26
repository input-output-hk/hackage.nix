{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "dzen-dhall"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kalnitsky Vladimir <klntsky@gmail.com>";
      author = "Kalnitsky Vladimir <klntsky@gmail.com>";
      homepage = "https://github.com/dzen-dhall/dzen-dhall#readme";
      url = "";
      synopsis = "Configure dzen2 bars in Dhall language";
      description = "Configure dzen2 bars in Dhall language";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.dhall)
          (hsPkgs.directory)
          (hsPkgs.file-embed-lzma)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hourglass)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.megaparsec)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parsec)
          (hsPkgs.parsers)
          (hsPkgs.pipes)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "dzen-dhall" = { depends = [ (hsPkgs.base) (hsPkgs.dzen-dhall) ]; };
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.dhall)
            (hsPkgs.dzen-dhall)
            (hsPkgs.filepath)
            (hsPkgs.generic-random)
            (hsPkgs.hspec)
            (hsPkgs.microlens)
            (hsPkgs.network-uri)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }