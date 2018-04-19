{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "current-locale";
          version = "0.2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "a@koterpillar.com";
        author = "Alexey Kotlyarov";
        homepage = "https://github.com/koterpillar/current-locale";
        url = "";
        synopsis = "Get the current system locale in System.Locale format";
        description = "Use the system 'locale' command to find out the current\nsystem locale in System.Locale format.";
        buildType = "Simple";
      };
      components = {
        current-locale = {
          depends  = [
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.base
            hsPkgs.split
          ];
        };
      };
    }