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
    flags = { repl = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hfoil"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Greg Horn 2012, 2015";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "Hess-Smith panel code for inviscid 2-d airfoil analysis";
      description = "Library and command line REPL with plotting to do simple inviscid hess-smith panel code.\n\nFeatures include:\n\n* Cheap and shameless xfoil ripoff for relp/plotting interface\n\n* Naca 4-series support with Gauss-Newton paneling\n\n* Broken UIUC database integration (type \\\"uiuc [foilname]\\\")\n\n* Haskeline interface with tab-completion (oooh)\n\n* Single and multi-element airfoils\n\n* Inviscid, incompressible, 2-dimensional flow only\n\n\nTo get started, do cabal install or whatever, then run the \\\"hfoil\\\" binary.\n\nThings to try: \\\"naca 2412\\\", \\\"alfa 4\\\", (hit enter before entering another airfoil), \\\"load [filename]\\\", \\\"uiuc e330\\\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."not-gloss" or (buildDepError "not-gloss"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."haskeline" or (buildDepError "haskeline"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        };
      exes = {
        "hfoil" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hfoil" or (buildDepError "hfoil"))
            ];
          };
        };
      };
    }