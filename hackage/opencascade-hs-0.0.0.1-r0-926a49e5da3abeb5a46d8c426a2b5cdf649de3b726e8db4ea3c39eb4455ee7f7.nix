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
      specVersion = "2.2";
      identifier = { name = "opencascade-hs"; version = "0.0.0.1"; };
      license = "LGPL-2.1-only";
      copyright = "2023 Joe Warren";
      maintainer = "josephmarkwarren@gmail.com";
      author = "Joe Warren";
      homepage = "https://github.com/joe-warren/opencascade-hs#readme";
      url = "";
      synopsis = "Thin Wrapper for the OpenCASCADE CAD Kernel";
      description = "Please see the README on GitHub at <https://github.com/joe-warren/opencascade-hs#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."TKGeomBase" or (errorHandler.sysDepError "TKGeomBase"))
          (pkgs."TKStd" or (errorHandler.sysDepError "TKStd"))
          (pkgs."TKG3d" or (errorHandler.sysDepError "TKG3d"))
          (pkgs."TKG2d" or (errorHandler.sysDepError "TKG2d"))
          (pkgs."TKMath" or (errorHandler.sysDepError "TKMath"))
          (pkgs."TKernel" or (errorHandler.sysDepError "TKernel"))
          (pkgs."TKBRep" or (errorHandler.sysDepError "TKBRep"))
          (pkgs."TKGeomBase" or (errorHandler.sysDepError "TKGeomBase"))
          (pkgs."TKOffset" or (errorHandler.sysDepError "TKOffset"))
          (pkgs."TKFillet" or (errorHandler.sysDepError "TKFillet"))
          (pkgs."TKBO" or (errorHandler.sysDepError "TKBO"))
          (pkgs."TKPrim" or (errorHandler.sysDepError "TKPrim"))
          (pkgs."TKTopAlgo" or (errorHandler.sysDepError "TKTopAlgo"))
          (pkgs."TKSTL" or (errorHandler.sysDepError "TKSTL"))
          (pkgs."TKSTEP" or (errorHandler.sysDepError "TKSTEP"))
          (pkgs."TKV3d" or (errorHandler.sysDepError "TKV3d"))
          (pkgs."TKMesh" or (errorHandler.sysDepError "TKMesh"))
        ];
        buildable = true;
      };
    };
  }