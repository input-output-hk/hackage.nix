{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "special-values";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/special-values#readme";
        url = "";
        synopsis = "Typeclass providing special values";
        description = "Special values are provided by a SpecialValues typeclass. Those can be used for example by QuickCheck, see quickcheck-special.";
        buildType = "Simple";
      };
      components = {
        special-values = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.ieee754
          ] ++ pkgs.lib.optional compiler.isGhc hsPkgs.nats;
        };
      };
    }