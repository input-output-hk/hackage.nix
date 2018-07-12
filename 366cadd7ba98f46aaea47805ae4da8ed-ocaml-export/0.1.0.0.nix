{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ocaml-export";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Plow Technologies";
        maintainer = "james.haver@plowtech.net";
        author = "James M.C. Haver II";
        homepage = "https://github.com/plow-technologies/ocaml-export#readme";
        url = "";
        synopsis = "Convert Haskell types in OCaml types";
        description = "README.md";
        buildType = "Simple";
      };
      components = {
        "ocaml-export" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.file-embed
            hsPkgs.filepath
            hsPkgs.formatting
            hsPkgs.hspec-golden-aeson
            hsPkgs.mtl
            hsPkgs.split
            hsPkgs.QuickCheck
            hsPkgs.quickcheck-arbitrary-adt
            hsPkgs.servant
            hsPkgs.servant-server
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.typelits-witnesses
            hsPkgs.wl-pprint-text
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.bytestring
              hsPkgs.constraints
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hspec
              hsPkgs.hspec-golden-aeson
              hsPkgs.ocaml-export
              hsPkgs.process
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-arbitrary-adt
              hsPkgs.servant
              hsPkgs.servant-server
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.time
              hsPkgs.wai
              hsPkgs.wai-extra
              hsPkgs.warp
              hsPkgs.typelits-witnesses
            ];
          };
        };
      };
    }