{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hlibgit2";
          version = "0.18.0.10";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@fpcomplete.com";
        author = "John Wiegley, Sakari Jokinen, Jacob Stanleyyeah,";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to libgit2";
        description = "Bindings to libgit2 v0.18.0.";
        buildType = "Simple";
      };
      components = {
        hlibgit2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.zlib
          ];
          libs = optionals (!system.isWindows) [
            pkgs.ssl
            pkgs.crypto
          ];
        };
        tests = {
          smoke = {
            depends  = [
              hsPkgs.base
              hsPkgs.hlibgit2
              hsPkgs.process
            ];
          };
        };
      };
    }