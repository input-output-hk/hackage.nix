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
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."gruff" or (buildDepError "gruff"))
            (hsPkgs."ruff" or (buildDepError "ruff"))
            ];
          };
        "gruff-octopus" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gruff" or (buildDepError "gruff"))
            (hsPkgs."ruff" or (buildDepError "ruff"))
            (hsPkgs."qd" or (buildDepError "qd"))
            (hsPkgs."qd-vec" or (buildDepError "qd-vec"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (buildDepError "hmpfr"));
          };
        "gruff-patterns" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gruff" or (buildDepError "gruff"))
            (hsPkgs."ruff" or (buildDepError "ruff"))
            (hsPkgs."qd" or (buildDepError "qd"))
            (hsPkgs."qd-vec" or (buildDepError "qd-vec"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (buildDepError "hmpfr"));
          };
        "gruff-randoms" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gruff" or (buildDepError "gruff"))
            (hsPkgs."ruff" or (buildDepError "ruff"))
            (hsPkgs."qd" or (buildDepError "qd"))
            (hsPkgs."qd-vec" or (buildDepError "qd-vec"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            (hsPkgs."random" or (buildDepError "random"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (buildDepError "hmpfr"));
          };
        "gruff-whn" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gruff" or (buildDepError "gruff"))
            (hsPkgs."ruff" or (buildDepError "ruff"))
            (hsPkgs."qd" or (buildDepError "qd"))
            (hsPkgs."qd-vec" or (buildDepError "qd-vec"))
            (hsPkgs."Vec" or (buildDepError "Vec"))
            (hsPkgs."data-memocombinators" or (buildDepError "data-memocombinators"))
            ] ++ (pkgs.lib).optional (flags.mpfr) (hsPkgs."hmpfr" or (buildDepError "hmpfr"));
          };
        };
      };
    }