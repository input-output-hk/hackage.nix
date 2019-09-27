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
      specVersion = "1.6";
      identifier = { name = "hVOIDP"; version = "1.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Qi Qi <qiqi789@gmail.com>";
      author = "Qi Qi <qiqi789@gmail.com>";
      homepage = "http://dslsrv4.cs.missouri.edu/~qqbm9";
      url = "";
      synopsis = "Optimal variable selection in chain graphical model.";
      description = "An implementation of the VOIDP algorithm that selects the optimal observations in chain graphical models.\n\nReferences:\n\n* Andreas Krause and Carlos Guestrin. 2009. Optimal value of information in graphical models. J. Artif. Int. Res. 35, 1 (July 2009), 557-591.\n\n* Qi Qi; Yi Shang; Hongchi Shi; , \"An improved algorithm for optimal subset selection in chain graphical models,\" Evolutionary Computation (CEC), 2010 IEEE Congress on , vol., no., pp.1-6, 18-23 July 2010";
      buildType = "Simple";
      };
    components = {
      "library" = { buildable = true; };
      exes = {
        "hVOIDP" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          libs = [
            (pkgs."lapack" or (sysDepError "lapack"))
            (pkgs."blas" or (sysDepError "blas"))
            ];
          buildable = true;
          };
        };
      };
    }