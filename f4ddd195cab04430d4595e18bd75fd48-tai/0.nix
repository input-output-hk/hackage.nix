{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tai";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "davean & tolt 2017";
        maintainer = "oss@xkcd.com";
        author = "davean, tolt";
        homepage = "https://oss.xkcd.com/";
        url = "";
        synopsis = "Support library to enable TAI usage on systems with time kept in UTC.";
        description = "This library manages leap second data to allow using TAI time inspite of the system clock being kept in UTC.";
        buildType = "Simple";
      };
      components = {
        "tai" = {
          depends  = [
            hsPkgs.base
            hsPkgs.time
            hsPkgs.mtl
            hsPkgs.trifecta
            hsPkgs.parsers
            hsPkgs.clock
            hsPkgs.wreq
            hsPkgs.lens
          ];
        };
      };
    }