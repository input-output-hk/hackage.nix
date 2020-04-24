{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "gloss-examples"; version = "1.9.4.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "benl@ouroborus.net";
      author = "Ben Lippmeier";
      homepage = "http://gloss.ouroborus.net";
      url = "";
      synopsis = "Examples using the gloss library";
      description = "Examples using the gloss graphics library.\nA mixed bag of fractals, particle simulations and cellular automata.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gloss-bitmap" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bmp" or ((hsPkgs.pkgs-errors).buildDepError "bmp"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-boids" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-clock" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-color" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-conway" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-draw" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-easy" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-eden" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-flake" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-gameevent" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-hello" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-lifespan" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        "gloss-machina" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-occlusion" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "gloss-algorithms"))
            ];
          buildable = true;
          };
        "gloss-styrene" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-tree" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-visibility" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-zen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-crystal" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-raster" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster"))
            ];
          buildable = true;
          };
        "gloss-ray" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-raster" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster"))
            ];
          buildable = true;
          };
        "gloss-pulse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-raster" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster"))
            ];
          buildable = true;
          };
        "gloss-wave" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-raster" or ((hsPkgs.pkgs-errors).buildDepError "gloss-raster"))
            ];
          buildable = true;
          };
        "gloss-fluid" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-io" or ((hsPkgs.pkgs-errors).buildDepError "repa-io"))
            (hsPkgs."repa-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "repa-algorithms"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-snow" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-mandel" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-graph" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            ];
          buildable = true;
          };
        "gloss-render" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gloss" or ((hsPkgs.pkgs-errors).buildDepError "gloss"))
            (hsPkgs."gloss-rendering" or ((hsPkgs.pkgs-errors).buildDepError "gloss-rendering"))
            (hsPkgs."GLFW-b" or ((hsPkgs.pkgs-errors).buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        };
      };
    }