{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Mapping";
          version = "0.1.0.0";
        };
        license = "AGPL-3.0-only";
        copyright = "";
        maintainer = "zaomir@outlook.com";
        author = "Zaoqi";
        homepage = "https://github.com/zaoqi/Mapping.hs";
        url = "";
        synopsis = "Mapping";
        description = "";
        buildType = "Simple";
      };
      components = {
        "Mapping" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }