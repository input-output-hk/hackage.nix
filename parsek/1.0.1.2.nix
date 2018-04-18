{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.12";
        identifier = {
          name = "parsek";
          version = "1.0.1.2";
        };
        license = "GPL-3.0-only";
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
        parsek = {
          depends  = [ hsPkgs.base ];
        };
      };
    }