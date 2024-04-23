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
      specVersion = "1.0";
      identifier = { name = "dx9d3dx"; version = "0.1.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          (hsPkgs."dx9base" or (errorHandler.buildDepError "dx9base"))
          (hsPkgs."dx9d3d" or (errorHandler.buildDepError "dx9d3d"))
        ];
        libs = [ (pkgs."d3dx9" or (errorHandler.sysDepError "d3dx9")) ];
        buildable = true;
      };
    };
  }