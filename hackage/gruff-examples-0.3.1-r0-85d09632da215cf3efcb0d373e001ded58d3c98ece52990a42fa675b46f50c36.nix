{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { mpfr = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "gruff-examples"; version = "0.3.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Mandelbrot Set examples using ruff and gruff";
      description = "Some example scripts, including a converter from old versions of gruff\nfile formats to the current file format.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gruff-convert" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            (hsPkgs."gruff" or ((hsPkgs.pkgs-errors).buildDepError "gruff"))
            ];
          buildable = true;
          };
        "gruff-labels" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."gruff" or ((hsPkgs.pkgs-errors).buildDepError "gruff"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            ];
          buildable = true;
          };
        "gruff-octopus" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gruff" or ((hsPkgs.pkgs-errors).buildDepError "gruff"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            (hsPkgs."qd-vec" or ((hsPkgs.pkgs-errors).buildDepError "qd-vec"))
            (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or ((hsPkgs.pkgs-errors).buildDepError "hmpfr"));
          buildable = true;
          };
        "gruff-patterns" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gruff" or ((hsPkgs.pkgs-errors).buildDepError "gruff"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            (hsPkgs."qd-vec" or ((hsPkgs.pkgs-errors).buildDepError "qd-vec"))
            (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or ((hsPkgs.pkgs-errors).buildDepError "hmpfr"));
          buildable = true;
          };
        "gruff-randoms" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gruff" or ((hsPkgs.pkgs-errors).buildDepError "gruff"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            (hsPkgs."qd-vec" or ((hsPkgs.pkgs-errors).buildDepError "qd-vec"))
            (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or ((hsPkgs.pkgs-errors).buildDepError "hmpfr"));
          buildable = true;
          };
        "gruff-whn" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."gruff" or ((hsPkgs.pkgs-errors).buildDepError "gruff"))
            (hsPkgs."ruff" or ((hsPkgs.pkgs-errors).buildDepError "ruff"))
            (hsPkgs."qd" or ((hsPkgs.pkgs-errors).buildDepError "qd"))
            (hsPkgs."qd-vec" or ((hsPkgs.pkgs-errors).buildDepError "qd-vec"))
            (hsPkgs."Vec" or ((hsPkgs.pkgs-errors).buildDepError "Vec"))
            (hsPkgs."data-memocombinators" or ((hsPkgs.pkgs-errors).buildDepError "data-memocombinators"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or ((hsPkgs.pkgs-errors).buildDepError "hmpfr"));
          buildable = true;
          };
        };
      };
    }