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
      specVersion = "3.0";
      identifier = { name = "hgg-3d"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Aelysce Project (Toshiaki Honda)";
      maintainer = "frenzieddoll@gmail.com";
      author = "Toshiaki Honda";
      homepage = "https://github.com/frenzieddoll/hgg";
      url = "";
      synopsis = "3D plot (CPU projection) for hgg; works with all 2D backends";
      description = "A 3D plotting library for hgg, comparable to matplotlib's mplot3d.\nCPU-based projection plus the painter's algorithm let the existing hgg\n2D backends (SVG / PDF / Rasterific) render 3D scatter / line /\nwireframe / surface plots as-is.\n.\nNo WebGL required — pure Haskell end to end. Interactive 3D (camera\nrotation etc.) in web environments is handled by a separate\nPureScript / WebGL frontend outside this package, connected through the\npre-bundled @data/webgl-spec.js@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
          (hsPkgs."hgg-pdf" or (errorHandler.buildDepError "hgg-pdf"))
          (hsPkgs."hgg-rasterific" or (errorHandler.buildDepError "hgg-rasterific"))
          (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ];
        buildable = true;
      };
      exes = {
        "plot3d-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgg-3d" or (errorHandler.buildDepError "hgg-3d"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-svg" or (errorHandler.buildDepError "hgg-svg"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
          ];
          buildable = true;
        };
        "browser-3d-demo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hgg-3d" or (errorHandler.buildDepError "hgg-3d"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          ];
          buildable = true;
        };
        "plot3d-printjson" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hgg-3d" or (errorHandler.buildDepError "hgg-3d"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hgg-3d-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hgg-3d" or (errorHandler.buildDepError "hgg-3d"))
            (hsPkgs."hgg-core" or (errorHandler.buildDepError "hgg-core"))
            (hsPkgs."hgg-frame" or (errorHandler.buildDepError "hgg-frame"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }