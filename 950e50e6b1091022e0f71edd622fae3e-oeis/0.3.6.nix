{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "oeis";
          version = "0.3.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Brian Lewis <brian@lorf.org>";
        author = "Brent Yorgey";
        homepage = "";
        url = "";
        synopsis = "Interface to the Online Encyclopedia of Integer Sequences (OEIS)";
        description = "Interface to the <http://oeis.org/ Online Encyclopedia of Integer Sequences (OEIS)>.";
        buildType = "Custom";
      };
      components = {
        "oeis" = {
          depends  = [
            hsPkgs.HTTP
            hsPkgs.base
          ] ++ [
            hsPkgs.network-uri
            hsPkgs.network
          ];
        };
        tests = {
          "main" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.oeis
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }