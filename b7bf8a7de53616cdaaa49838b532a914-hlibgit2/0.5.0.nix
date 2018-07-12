{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hlibgit2";
          version = "0.5.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "Sakari Jokinen, Jacob Stanley, John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to libgit2.";
        description = "Bindings to libgit2 v0.16.0-471-g5b9fac3";
        buildType = "Simple";
      };
      components = {
        "hlibgit2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.system-filepath
            hsPkgs.system-fileio
            hsPkgs.time
            hsPkgs.text
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.lens
          ];
          libs = [ pkgs.git2 ];
        };
        tests = {
          "smoke" = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlibgit2
              hsPkgs.process
              hsPkgs.system-filepath
              hsPkgs.system-fileio
              hsPkgs.time
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.lens
            ];
          };
        };
      };
    }