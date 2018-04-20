{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hlibsass";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "fiolek94@gmail.com";
        author = "Jakub Fijałkowski <fiolek94@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to libsass";
        description = "This package provides (very) low level bindings to libsass. It uses libsass\ncompiled to static library, so if you use this in your project, you have to\nlink your project with C++ runtime(which libsass does automatically - links\nwith libstd++).\nFor documentation visit <https://github.com/sass/libsass>.";
        buildType = "Custom";
      };
      components = {
        hlibsass = {
          depends  = [ hsPkgs.base ];
          libs = [
            pkgs.sass
            pkgs."stdc++"
            pkgs.sass
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.hlibsass
            ];
          };
        };
      };
    }