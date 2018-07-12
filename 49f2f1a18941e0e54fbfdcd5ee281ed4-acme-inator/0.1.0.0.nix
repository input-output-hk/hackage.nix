{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "acme-inator";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Mark Lentczner <mzero@glyphic.com>";
        author = "Mark Lentczner <mzero@glyphic.com>";
        homepage = "";
        url = "";
        synopsis = "Evil inventions in the Tri-State area";
        description = "Construction and operation of evil inventions in the Tri-State area.\nBased on the pioneering work of Dr. Heinz Doofenshmirtz.";
        buildType = "Simple";
      };
      components = {
        "acme-inator" = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          "evilplan" = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }