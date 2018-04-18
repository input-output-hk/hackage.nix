{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      system-lua = false;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hslua";
          version = "0.3.10";
        };
        license = "MIT";
        copyright = "2007-2012, Gracjan Polak";
        maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>";
        author = "Gracjan Polak <gracjanpolak@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A Lua language interpreter embedding in Haskell";
        description = "The Scripting.Lua module is a wrapper of Lua language interpreter\nas described in www.lua.org.\n\nThis package contains full Lua interpreter version 5.1.4.\nIf you want to link it with system-wide Lua installation, use system-lua flag.";
        buildType = "Simple";
      };
      components = {
        hslua = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
        tests = {
          simple-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hslua
            ];
          };
        };
      };
    }