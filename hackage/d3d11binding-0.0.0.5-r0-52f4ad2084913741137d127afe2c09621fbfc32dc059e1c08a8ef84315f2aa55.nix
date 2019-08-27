let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "d3d11binding"; version = "0.0.0.5"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Win32" or (buildDepError "Win32"))
          (hsPkgs."c-storable-deriving" or (buildDepError "c-storable-deriving"))
          (hsPkgs."vect" or (buildDepError "vect"))
          ];
        libs = [
          (pkgs."d3d11" or (sysDepError "d3d11"))
          (pkgs."d3dx11" or (sysDepError "d3dx11"))
          (pkgs."D3DCompiler" or (sysDepError "D3DCompiler"))
          (pkgs."d3dxof" or (sysDepError "d3dxof"))
          (pkgs."dxgi" or (sysDepError "dxgi"))
          (pkgs."dxguid" or (sysDepError "dxguid"))
          ];
        };
      exes = {
        "Triangle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Win32" or (buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (buildDepError "d3d11binding"))
            ];
          };
        "Cube" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Win32" or (buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (buildDepError "d3d11binding"))
            (hsPkgs."c-storable-deriving" or (buildDepError "c-storable-deriving"))
            (hsPkgs."vect" or (buildDepError "vect"))
            ];
          };
        "RevolveCube" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Win32" or (buildDepError "Win32"))
            (hsPkgs."d3d11binding" or (buildDepError "d3d11binding"))
            (hsPkgs."c-storable-deriving" or (buildDepError "c-storable-deriving"))
            (hsPkgs."vect" or (buildDepError "vect"))
            ];
          };
        };
      };
    }