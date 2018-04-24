{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "quickcheck-special";
          version = "0.1.0.5";
        };
        license = "MIT";
        copyright = "2016 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/quickcheck-special#readme";
        url = "";
        synopsis = "Edge cases and special values for QuickCheck Arbitrary instances";
        description = "The standard Arbitrary instances of QuickCheck don't generate special values. This is fixed by this package which provides the newtype Special with an Arbitrary instance. The special values are given by the SpecialValues typeclass.";
        buildType = "Simple";
      };
      components = {
        quickcheck-special = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.QuickCheck
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.ieee754
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.10") hsPkgs.nats;
        };
      };
    }