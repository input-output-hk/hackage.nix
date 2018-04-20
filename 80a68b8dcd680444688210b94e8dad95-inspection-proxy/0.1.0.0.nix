{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "inspection-proxy";
          version = "0.1.0.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "mhitza@gmail.com";
        author = "Marius Ghita";
        homepage = "";
        url = "";
        synopsis = "A simple proxy for debugging plaintext protocols communication";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          inspection-proxy = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes-network
              hsPkgs.pipes
              hsPkgs.bytestring
              hsPkgs.async
              hsPkgs.cmdargs
            ];
          };
        };
      };
    }