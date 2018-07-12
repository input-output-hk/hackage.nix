{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "simpleirc";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Dominik Picheta";
        maintainer = "Dominik Picheta <dominikpicheta@googlemail.com>";
        author = "Dominik Picheta <dominikpicheta@googlemail.com>";
        homepage = "http://github.com/dom96/SimpleIRC";
        url = "http://code.haskell.org/fastirc/";
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
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.old-locale
          ];
        };
      };
    }