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
      specVersion = "1.18";
      identifier = { name = "numeric-ode"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Alexander V Vershilov, Dominic Steinitz";
      maintainer = "dominic@steinitz.org";
      author = "Alexander V Vershilov, Dominic Steinitz";
      homepage = "https://github.com/qnikst/numeric-ode";
      url = "";
      synopsis = "Ode solvers";
      description = "Some ode solvers, e.g., Störmer-Verlet";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."mwc-probability" or (buildDepError "mwc-probability"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."ad" or (buildDepError "ad"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."tdigest" or (buildDepError "tdigest"))
          (hsPkgs."numhask" or (buildDepError "numhask"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          ];
        buildable = true;
        };
      exes = {
        "Kepler" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."numeric-ode" or (buildDepError "numeric-ode"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            (hsPkgs."data-accessor" or (buildDepError "data-accessor"))
            (hsPkgs."diagrams-rasterific" or (buildDepError "diagrams-rasterific"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."plots" or (buildDepError "plots"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }