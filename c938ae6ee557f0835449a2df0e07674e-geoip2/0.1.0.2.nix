{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "geoip2";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "palkovsky.ondrej@gmail.com";
        author = "Ondrej Palkovsky";
        homepage = "";
        url = "";
        synopsis = "Pure haskell interface to MaxMind GeoIP database";
        description = "GeoIP2 is a haskell binding to the MaxMind GeoIP2 database.\nIt parses the database according to the MaxMind DB\nspecification <http://maxmind.github.io/MaxMind-DB/>, version 2\nof the specification is supported. The free geolite2 database can\nbe downloaded at <http://dev.maxmind.com/geoip/geoip2/geolite2/>.";
        buildType = "Simple";
      };
      components = {
        geoip2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring-mmap
            hsPkgs.bytestring
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.iproute
            hsPkgs.reinterpret-cast
          ];
        };
      };
    }