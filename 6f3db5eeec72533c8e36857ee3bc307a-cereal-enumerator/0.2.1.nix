{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cereal-enumerator";
          version = "0.2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "patrick@parcs.ath.cx";
        author = "Patrick Palka";
        homepage = "";
        url = "";
        synopsis = "Deserialize things with cereal and enumerator";
        description = "";
        buildType = "Simple";
      };
      components = {
        "cereal-enumerator" = {
          depends  = [
            hsPkgs.base
            hsPkgs.enumerator
            hsPkgs.cereal
            hsPkgs.bytestring
          ];
        };
      };
    }