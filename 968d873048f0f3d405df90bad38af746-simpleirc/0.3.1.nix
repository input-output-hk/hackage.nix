{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "simpleirc";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Dominik Picheta";
        maintainer = "Dominik Picheta <dominikpicheta@googlemail.com>";
        author = "Dominik Picheta <dominikpicheta@googlemail.com>";
        homepage = "http://github.com/dom96/SimpleIRC";
        url = "";
        synopsis = "Simple IRC Library";
        description = "Simple IRC Library. This IRC Library aims to be simple and lightweight.";
        buildType = "Simple";
      };
      components = {
        "simpleirc" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.connection
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.knob
            ];
          };
        };
      };
    }