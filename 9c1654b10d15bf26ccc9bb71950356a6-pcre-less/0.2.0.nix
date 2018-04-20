{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pcre-less";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "sreservoir@gmail.com";
        author = "sreservoir";
        homepage = "~";
        url = "";
        synopsis = "Nicer interface to regex-pcre";
        description = "Unfortunately, docs don't exist yet.";
        buildType = "Simple";
      };
      components = {
        pcre-less = {
          depends  = [
            hsPkgs.base
            hsPkgs.regex-pcre
            hsPkgs.array
          ];
        };
      };
    }