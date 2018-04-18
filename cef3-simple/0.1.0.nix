{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cef3-simple";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Maksymilian.Owsianny@gmail.com";
        author = "Maksymilian Owsianny";
        homepage = "";
        url = "";
        synopsis = "Simple wrapper around cef3-raw";
        description = "A handful of higher level helper functions around\n<https://github.com/haskell-ui/cef3-raw cef3-raw>.";
        buildType = "Simple";
      };
      components = {
        cef3-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.cef3-raw
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
      };
    }