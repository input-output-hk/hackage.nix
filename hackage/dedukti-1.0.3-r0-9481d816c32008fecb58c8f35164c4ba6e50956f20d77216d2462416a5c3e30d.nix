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
      specVersion = "1.6.0";
      identifier = { name = "dedukti"; version = "1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "© 2009 CNRS - École Polytechnique - INRIA";
      maintainer = "Mathieu Boespflug <mboes@lix.polytechnique.fr>";
      author = "Mathieu Boespflug";
      homepage = "http://www.lix.polytechnique.fr/~mboes/src/dedukti.git";
      url = "";
      synopsis = "A type-checker for the λΠ-modulo calculus.";
      description = "Dedukti is a proof checker for the λΠ-modulo calculus, a\ndependently typed λ-calculus with the addition of typed rewrite\nrules, capable of expressing proofs in Deduction Modulo [1].\n\n[1] G. Dowek, Th. Hardin, C. Kirchner, Theorem proving modulo,\n/Journal of Automated Reasoning/, 31, 2003, pp. 33-72.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."time" or (buildDepError "time")) ]; };
      exes = {
        "dedukti" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."wl-pprint" or (buildDepError "wl-pprint"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."Stream" or (buildDepError "Stream"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hmk" or (buildDepError "hmk"))
            ];
          };
        };
      };
    }