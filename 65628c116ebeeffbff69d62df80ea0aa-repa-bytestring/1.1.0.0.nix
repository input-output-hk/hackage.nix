{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-bytestring";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The DPH Team";
        homepage = "http://trac.haskell.org/repa";
        url = "";
        synopsis = "Conversions between Repa Arrays and ByteStrings.";
        description = "NOTE: You must use the GHC head branch > 6.13.20100309 to get decent performance.\nConversions between Repa Arrays and ByteStrings.";
        buildType = "Simple";
      };
      components = {
        repa-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.dph-prim-par
            hsPkgs.repa
            hsPkgs.bytestring
          ];
        };
      };
    }