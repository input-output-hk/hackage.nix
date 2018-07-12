{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "setoid";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Global Access Internet Services GmbH";
        maintainer = "kerestey@global.de";
        author = "Pavlo Kerestey";
        homepage = "";
        url = "";
        synopsis = "A Haskell implementation of setoid";
        description = "Setoid (<https://en.wikipedia.org/wiki/Setoid>) is a set equipped with an equivalence relation. Setoid is a useful data structure in cases where equivalence is chosen not to be equality. One can use it to influence the memberships of the elements more strictly, as opposed to sets, and run computations on unions when conflicts between elements are found.\nYou can find more deatails in `Data.Setoid`";
        buildType = "Simple";
      };
      components = {
        "setoid" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        tests = {
          "setoid-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.setoid
              hsPkgs.smallcheck
              hsPkgs.tasty
              hsPkgs.tasty-discover
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
      };
    }