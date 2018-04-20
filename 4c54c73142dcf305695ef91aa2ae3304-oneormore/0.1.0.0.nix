{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "oneormore";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ithinkican@gmail.com";
        author = "Allen Nelson";
        homepage = "https://github.com/thinkpad20/oneormore";
        url = "";
        synopsis = "A never-empty list type.";
        description = "";
        buildType = "Simple";
      };
      components = {
        oneormore = {
          depends  = [ hsPkgs.base ];
        };
      };
    }