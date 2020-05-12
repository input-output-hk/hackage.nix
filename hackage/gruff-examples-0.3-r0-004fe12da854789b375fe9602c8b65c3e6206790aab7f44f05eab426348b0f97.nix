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
    flags = { mpfr = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "gruff-examples"; version = "0.3"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set examples using ruff and gruff";
      description = "Some example animation scripts.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gruff-labels" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."gruff" or (errorHandler.buildDepError "gruff"))
            (hsPkgs."ruff" or (errorHandler.buildDepError "ruff"))
            ];
          buildable = true;
          };
        "gruff-octopus" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gruff" or (errorHandler.buildDepError "gruff"))
            (hsPkgs."ruff" or (errorHandler.buildDepError "ruff"))
            (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
            (hsPkgs."qd-vec" or (errorHandler.buildDepError "qd-vec"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"));
          buildable = true;
          };
        "gruff-patterns" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gruff" or (errorHandler.buildDepError "gruff"))
            (hsPkgs."ruff" or (errorHandler.buildDepError "ruff"))
            (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
            (hsPkgs."qd-vec" or (errorHandler.buildDepError "qd-vec"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"));
          buildable = true;
          };
        "gruff-randoms" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gruff" or (errorHandler.buildDepError "gruff"))
            (hsPkgs."ruff" or (errorHandler.buildDepError "ruff"))
            (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
            (hsPkgs."qd-vec" or (errorHandler.buildDepError "qd-vec"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"));
          buildable = true;
          };
        "gruff-whn" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gruff" or (errorHandler.buildDepError "gruff"))
            (hsPkgs."ruff" or (errorHandler.buildDepError "ruff"))
            (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
            (hsPkgs."qd-vec" or (errorHandler.buildDepError "qd-vec"))
            (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
            (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (errorHandler.buildDepError "hmpfr"));
          buildable = true;
          };
        };
      };
    }