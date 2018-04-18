{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "zmqat";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "koral at mailoo dot org";
        author = "koral";
        homepage = "";
        url = "";
        synopsis = "A socat-like tool for zeromq socket library";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          zmqat = {
            depends  = [
              hsPkgs.base
              hsPkgs.zeromq-haskell
              hsPkgs.bytestring
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }