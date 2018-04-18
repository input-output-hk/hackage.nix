{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "luautils";
          version = "0.1.1.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "ajnsit@gmail.com";
        author = "Anupam Jain";
        homepage = "";
        url = "";
        synopsis = "Helpers for Haskell integration with Lua";
        description = "This package is an add-on to the @HsLua@ package by Gracjan Polak.\nHsLua only provides a very bare-bones wrapper over the Lua API, and this\npackage is meant to fill in the gap by providing some commonly used features.";
        buildType = "Simple";
      };
      components = {
        luautils = {
          depends  = [
            hsPkgs.base
            hsPkgs.hslua
            hsPkgs.monad-loops
            hsPkgs.containers
            hsPkgs.custom-prelude
            hsPkgs.text
          ];
        };
      };
    }