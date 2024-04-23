{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "d3d11binding"; version = "0.0.0.7"; };
      license = "MIT";
      copyright = "";
      maintainer = "jwvg0425@naver.com";
      author = "jwvg0425";
      homepage = "https://github.com/jwvg0425/d3d11binding";
      url = "";
      synopsis = "A raw binding for the directX 11";
      description = "A raw binding for the directX 11   ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          (hsPkgs."c-storable-deriving" or (errorHandler.buildDepError "c-storable-deriving"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
        ];
        libs = [
          (pkgs."d3d11" or (errorHandler.sysDepError "d3d11"))
          (pkgs."d3dx11" or (errorHandler.sysDepError "d3dx11"))
          (pkgs."D3DCompiler" or (errorHandler.sysDepError "D3DCompiler"))
          (pkgs."d3dxof" or (errorHandler.sysDepError "d3dxof"))
          (pkgs."dxgi" or (errorHandler.sysDepError "dxgi"))
          (pkgs."dxguid" or (errorHandler.sysDepError "dxguid"))
        ];
        buildable = true;
      };
      exes = {
        "D3D11Binding-Triangle" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (errorHandler.buildDepError "d3d11binding"))
          ];
          buildable = true;
        };
        "D3D11Binding-Cube" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (errorHandler.buildDepError "d3d11binding"))
            (hsPkgs."c-storable-deriving" or (errorHandler.buildDepError "c-storable-deriving"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          ];
          buildable = true;
        };
        "D3D11Binding-RevolveCube" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (errorHandler.buildDepError "d3d11binding"))
            (hsPkgs."c-storable-deriving" or (errorHandler.buildDepError "c-storable-deriving"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          ];
          buildable = true;
        };
        "D3D11Binding-Lighting" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (errorHandler.buildDepError "d3d11binding"))
            (hsPkgs."c-storable-deriving" or (errorHandler.buildDepError "c-storable-deriving"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          ];
          buildable = true;
        };
        "D3D11Binding-Texture" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (errorHandler.buildDepError "d3d11binding"))
            (hsPkgs."c-storable-deriving" or (errorHandler.buildDepError "c-storable-deriving"))
            (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          ];
          buildable = true;
        };
      };
    };
  }