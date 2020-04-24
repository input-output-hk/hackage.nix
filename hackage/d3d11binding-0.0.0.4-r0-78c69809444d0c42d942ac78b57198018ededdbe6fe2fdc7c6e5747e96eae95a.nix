{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "d3d11binding"; version = "0.0.0.4"; };
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
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
          (hsPkgs."c-storable-deriving" or ((hsPkgs.pkgs-errors).buildDepError "c-storable-deriving"))
          (hsPkgs."vect" or ((hsPkgs.pkgs-errors).buildDepError "vect"))
          ];
        libs = [
          (pkgs."d3d11" or ((hsPkgs.pkgs-errors).sysDepError "d3d11"))
          (pkgs."d3dx11" or ((hsPkgs.pkgs-errors).sysDepError "d3dx11"))
          (pkgs."D3DCompiler" or ((hsPkgs.pkgs-errors).sysDepError "D3DCompiler"))
          (pkgs."d3dxof" or ((hsPkgs.pkgs-errors).sysDepError "d3dxof"))
          (pkgs."dxgi" or ((hsPkgs.pkgs-errors).sysDepError "dxgi"))
          (pkgs."dxguid" or ((hsPkgs.pkgs-errors).sysDepError "dxguid"))
          ];
        buildable = true;
        };
      exes = {
        "Triangle" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            (hsPkgs."d3d11binding" or ((hsPkgs.pkgs-errors).buildDepError "d3d11binding"))
            ];
          buildable = true;
          };
        "Cube" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
            (hsPkgs."d3d11binding" or ((hsPkgs.pkgs-errors).buildDepError "d3d11binding"))
            (hsPkgs."c-storable-deriving" or ((hsPkgs.pkgs-errors).buildDepError "c-storable-deriving"))
            (hsPkgs."vect" or ((hsPkgs.pkgs-errors).buildDepError "vect"))
            ];
          buildable = true;
          };
        };
      };
    }