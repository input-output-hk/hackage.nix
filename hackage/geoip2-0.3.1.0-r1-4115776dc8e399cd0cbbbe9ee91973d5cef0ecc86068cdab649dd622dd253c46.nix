{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "geoip2"; version = "0.3.1.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mmap)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.iproute)
          (hsPkgs.reinterpret-cast)
          ];
        };
      };
    }