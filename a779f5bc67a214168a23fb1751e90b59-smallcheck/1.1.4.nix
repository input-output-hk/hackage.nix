{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "smallcheck";
          version = "1.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Colin Runciman, Roman Cheplyaka";
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
            hsPkgs.mtl
            hsPkgs.logict
            hsPkgs.ghc-prim
            hsPkgs.pretty
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.nats;
        };
      };
    }