{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "d3d11binding"; version = "0.0.0.2"; };
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
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.Win32) (hsPkgs.c-storable-deriving) ];
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
        "HelloWorld" = {
          depends = [ (hsPkgs.base) (hsPkgs.Win32) (hsPkgs.d3d11binding) ];
          };
        };
      };
    }