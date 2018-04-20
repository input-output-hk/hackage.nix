{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "dx9d3dx";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "none";
        author = "Esa Ilari Vuokko";
        homepage = "";
        url = "";
        synopsis = "A binding to the Microsoft DirectX 9 D3DX API.";
        description = "A Haskell binding for the Microsoft DirectX 9 D3DX .\n\nThis version requires DirectX SDK that is specified in --extra-include-dirs and --extra-lib-dirs PATH.\nSee the README file for more information.";
        buildType = "Simple";
      };
      components = {
        dx9d3dx = {
          depends  = [
            hsPkgs.base
            hsPkgs.Win32
            hsPkgs.dx9base
            hsPkgs.dx9d3d
          ];
          libs = [ pkgs.d3dx9 ];
        };
      };
    }