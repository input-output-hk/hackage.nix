{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "2.2";
        identifier = {
          name = "dhall-to-cabal";
          version = "1.2.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Ollie Charles <ollie@ocharles.org.uk>";
        homepage = "https://github.com/ocharles/dhall-to-cabal";
        url = "";
        synopsis = "Compile Dhall expressions to Cabal files";
        description = "dhall-to-cabal takes Dhall expressions and compiles them into Cabal\nfiles. All of the features of Dhall are supported, such as let\nbindings and imports, and all features of Cabal are supported\n(including conditional stanzas).\n";
        buildType = "Simple";
      };
      components = {
        "dhall-to-cabal" = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.dhall
            hsPkgs.hashable
            hsPkgs.insert-ordered-containers
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
          ];
        };
        exes = {
          "dhall-to-cabal" = {
            depends  = [
              hsPkgs.Cabal
              hsPkgs.base
              hsPkgs.dhall
              hsPkgs.dhall-to-cabal
              hsPkgs.insert-ordered-containers
              hsPkgs.optparse-applicative
              hsPkgs.prettyprinter
              hsPkgs.text
              hsPkgs.transformers
            ];
          };
          "cabal-to-dhall" = {
            depends  = [
              hsPkgs.base
              hsPkgs.dhall
              hsPkgs.bytestring
              hsPkgs.dhall-to-cabal
              hsPkgs.optparse-applicative
              hsPkgs.prettyprinter
              hsPkgs.text
            ];
          };
        };
        tests = {
          "golden-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.Diff
              hsPkgs.bytestring
              hsPkgs.dhall
              hsPkgs.dhall-to-cabal
              hsPkgs.filepath
              hsPkgs.prettyprinter
              hsPkgs.tasty
              hsPkgs.tasty-golden
              hsPkgs.text
            ];
          };
        };
      };
    }