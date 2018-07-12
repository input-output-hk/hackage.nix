{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.12";
        identifier = {
          name = "parsek";
          version = "1.0.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jeanphilippe.bernardy@gmail.com";
        author = "Koen Claessen, Jean-Philippe Bernardy";
        homepage = "";
        url = "";
        synopsis = "Parallel Parsing Processes";
        description = "Koen Claessen's PPP, Modified.";
        buildType = "Simple";
      };
      components = {
        "parsek" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }