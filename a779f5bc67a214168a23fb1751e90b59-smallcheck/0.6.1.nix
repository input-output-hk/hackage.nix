{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smallcheck";
          version = "0.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Colin Runciman";
        homepage = "https://github.com/feuerbach/smallcheck";
        url = "";
        synopsis = "A property-based testing library";
        description = "SmallCheck is a testing library that allows to verify properties\nfor all test cases up to some depth. The test cases are generated\nautomatically by SmallCheck.";
        buildType = "Simple";
      };
      components = {
        smallcheck = {
          depends  = [
            hsPkgs.base
          ] ++ pkgs.lib.optionals compiler.isGhc [
            hsPkgs.ghc-prim
            hsPkgs.dlist
          ];
        };
      };
    }