{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "d3d11binding";
        version = "0.0.0.6";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jwvg0425@naver.com";
      author = "jwvg0425";
      homepage = "https://github.com/jwvg0425/d3d11binding";
      url = "";
      synopsis = "A raw binding for the directX 11";
      description = "A raw binding for the directX 11";
      buildType = "Simple";
    };
    components = {
      "d3d11binding" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Win32)
          (hsPkgs.c-storable-deriving)
          (hsPkgs.vect)
        ];
        libs = [
          (pkgs."d3d11")
          (pkgs."d3dx11")
          (pkgs."D3DCompiler")
          (pkgs."d3dxof")
          (pkgs."dxgi")
          (pkgs."dxguid")
        ];
      };
      exes = {
        "D3D11Binding-Triangle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Win32)
            (hsPkgs.d3d11binding)
          ];
        };
        "D3D11Binding-Cube" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Win32)
            (hsPkgs.d3d11binding)
            (hsPkgs.c-storable-deriving)
            (hsPkgs.vect)
          ];
        };
        "D3D11Binding-RevolveCube" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Win32)
            (hsPkgs.d3d11binding)
            (hsPkgs.c-storable-deriving)
            (hsPkgs.vect)
          ];
        };
        "D3D11Binding-Lighting" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Win32)
            (hsPkgs.d3d11binding)
            (hsPkgs.c-storable-deriving)
            (hsPkgs.vect)
          ];
        };
      };
    };
  }