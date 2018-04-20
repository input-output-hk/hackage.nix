{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "iptables-helpers";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "etarasov.ekb@gmail.com";
        author = "Evgeny Tarasov";
        homepage = "";
        url = "";
        synopsis = "iptables rules parser/printer library";
        description = "";
        buildType = "Simple";
      };
      components = {
        iptables-helpers = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.safe
            hsPkgs.containers
            hsPkgs.utf8-string
          ];
        };
        exes = {
          iptables-helpers-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.syb
            ];
          };
        };
      };
    }