{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ntp-control";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "magnus@scrive.com";
        author = "Scrive";
        homepage = "";
        url = "";
        synopsis = "Client library for NTP control messaging";
        description = "Support for monitoring NTP server performance, including quering NTP system variables and system status.";
        buildType = "Simple";
      };
      components = {
        "ntp-control" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.cereal
            hsPkgs.network
            hsPkgs.old-locale
            hsPkgs.time
          ];
        };
        tests = {
          "test-query" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.bytestring-lexing
              hsPkgs.cereal
              hsPkgs.network
              hsPkgs.old-locale
              hsPkgs.time
            ];
          };
        };
      };
    }