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
    flags = { llvm = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "brillo-examples"; version = "1.13.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "brillo@ad-si.com";
      author = "Ben Lippmeier, Adrian Sieber";
      homepage = "https://github.com/ad-si/Brillo";
      url = "";
      synopsis = "Examples using the Brillo library";
      description = "Examples using the Brillo graphics library.\nA mixed bag of fractals, particle simulations and cellular automata.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "brillo-bitmap" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bmp" or (errorHandler.buildDepError "bmp"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "brillo-boids" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "brillo-clock" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-color" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "brillo-conway" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "brillo-draw" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-easy" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-eden" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "brillo-flake" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-gameevent" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-hello" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-lifespan" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "brillo-machina" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-occlusion" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."brillo-algorithms" or (errorHandler.buildDepError "brillo-algorithms"))
          ];
          buildable = true;
        };
        "brillo-styrene" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
          buildable = true;
        };
        "brillo-tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-visibility" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
        "brillo-zen" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
          ];
          buildable = true;
        };
        "brillo-graph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "brillo-gravity" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
        "brillo-render" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."brillo" or (errorHandler.buildDepError "brillo"))
            (hsPkgs."brillo-rendering" or (errorHandler.buildDepError "brillo-rendering"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          ];
          buildable = true;
        };
      };
    };
  }