{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "current-locale";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "koterpillar@gmail.com";
        author = "Alexey Kotlyarov";
        homepage = "https://github.com/koterpillar/current-locale";
        url = "";
        synopsis = "Get the current system locale in System.Locale format";
        description = "Use the system 'date' command to find out the current\nsystem locale in System.Locale format.";
        buildType = "Simple";
      };
      components = {
        current-locale = {
          depends  = [
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.base
          ];
        };
      };
    }