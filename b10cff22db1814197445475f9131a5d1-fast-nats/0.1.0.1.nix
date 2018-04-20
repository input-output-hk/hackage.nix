{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "fast-nats";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mckean.kylej@gmail.com";
        author = "Kyle McKean";
        homepage = "";
        url = "";
        synopsis = "Natural Numbers with no overhead";
        description = "Dependent Singleton like natural numbers without the\nSingleton dependency. The implementation uses inductive\nnaturals at the type level but machine integers at the term\nlevel.";
        buildType = "Simple";
      };
      components = {
        fast-nats = {
          depends  = [ hsPkgs.base ];
        };
      };
    }