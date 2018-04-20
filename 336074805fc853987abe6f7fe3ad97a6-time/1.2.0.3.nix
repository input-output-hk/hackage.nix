{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "time";
          version = "1.2.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<ashley@semantic.org>";
        author = "Ashley Yakeley";
        homepage = "http://semantic.org/TimeLib/";
        url = "";
        synopsis = "A time library";
        description = "A time library";
        buildType = "Custom";
      };
      components = {
        time = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
      };
    }