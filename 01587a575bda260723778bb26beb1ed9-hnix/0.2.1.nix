{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      parsec = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hnix";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "http://github.com/jwiegley/hnix";
        url = "";
        synopsis = "Haskell implementation of the Nix language";
        description = "Haskell implementation of the Nix language.";
        buildType = "Simple";
      };
      components = {
        hnix = {
          depends  = [
            hsPkgs.base
            hsPkgs.ansi-wl-pprint
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.parsers
            hsPkgs.unordered-containers
            hsPkgs.data-fix
          ] ++ (if _flags.parsec
            then [ hsPkgs.parsec ]
            else [ hsPkgs.trifecta ]);
        };
        exes = {
          hnix = {
            depends  = [
              hsPkgs.base
              hsPkgs.hnix
              hsPkgs.containers
              hsPkgs.ansi-wl-pprint
              hsPkgs.data-fix
            ];
          };
        };
        tests = {
          hnix-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.data-fix
              hsPkgs.hnix
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-hunit
            ];
          };
        };
        benchmarks = {
          hnix-benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.hnix
              hsPkgs.criterion
            ];
          };
        };
      };
    }