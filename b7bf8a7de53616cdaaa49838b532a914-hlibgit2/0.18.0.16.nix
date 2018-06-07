{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hlibgit2";
          version = "0.18.0.16";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley, Sakari Jokinen, Jacob Stanleyyeah,";
        homepage = "";
        url = "";
        synopsis = "Low-level bindings to libgit2";
        description = "Bindings to libgit2 v0.18.0.";
        buildType = "Custom";
      };
      components = {
        hlibgit2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.zlib
          ];
          libs = if system.isWindows
            then [
              pkgs.ws2_32
              pkgs.regex
              pkgs.winhttp
              pkgs.crypt32
              pkgs.rpcrt4
              pkgs.ssl
              pkgs.crypto
            ]
            else [
              pkgs.ssl
              pkgs.crypto
              pkgs.pthread
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