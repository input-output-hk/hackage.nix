{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cake";
          version = "0.1.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "A build-system library and driver";
        description = "Soon to appear.";
        buildType = "Simple";
      };
      components = {
        "cake" = {
          depends  = [
            hsPkgs.base
            hsPkgs.derive
            hsPkgs.mtl
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.binary
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.Encode
            hsPkgs.bytestring
            hsPkgs.pureMD5
            hsPkgs.split
          ];
        };
        exes = {
          "cake" = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.cmdargs
              hsPkgs.regex-tdfa
              hsPkgs.array
            ];
          };
        };
      };
    }