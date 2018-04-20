{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cereal-conduit";
          version = "0.7.2.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Michael Snoyman";
        author = "Myles C. Maxfield <myles.maxfield@gmail.com>";
        homepage = "https://github.com/snoyberg/conduit";
        url = "";
        synopsis = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
        description = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits.";
        buildType = "Simple";
      };
      components = {
        cereal-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.conduit
            hsPkgs.resourcet
            hsPkgs.cereal
            hsPkgs.bytestring
            hsPkgs.transformers
          ];
        };
        tests = {
          test-cereal-conduit = {
            depends  = [
              hsPkgs.base
              hsPkgs.conduit
              hsPkgs.cereal
              hsPkgs.cereal-conduit
              hsPkgs.bytestring
              hsPkgs.HUnit
              hsPkgs.resourcet
              hsPkgs.mtl
              hsPkgs.transformers
            ];
          };
        };
      };
    }