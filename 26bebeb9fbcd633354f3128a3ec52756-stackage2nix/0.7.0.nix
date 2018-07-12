{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stackage2nix";
          version = "0.7.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "bushevdv@gmail.com";
        author = "Dmitry Bushev\n, Benno Fünfstück";
        homepage = "https://github.com/typeable/stackage2nix#readme";
        url = "";
        synopsis = "Convert Stack files into Nix build instructions.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "stackage2nix" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Cabal
            hsPkgs.QuickCheck
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.cabal2nix
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.distribution-nixpkgs
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.gitlib
            hsPkgs.gitlib-libgit2
            hsPkgs.hopenssl
            hsPkgs.inflections
            hsPkgs.language-nix
            hsPkgs.lens
            hsPkgs.network-uri
            hsPkgs.optparse-applicative
            hsPkgs.pretty
            hsPkgs.stackage-curator
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.yaml
          ];
        };
        exes = {
          "stackage2nix" = {
            depends  = [
              hsPkgs.base
              hsPkgs.stackage2nix
            ];
          };
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.network-uri
              hsPkgs.pretty
              hsPkgs.shakespeare
              hsPkgs.stackage2nix
              hsPkgs.text
              hsPkgs.yaml
            ];
          };
        };
      };
    }