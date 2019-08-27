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
      specVersion = "1.2";
      identifier = { name = "shivers-cfg"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Implementation of Shivers' Control-Flow Analysis";
      description = "In his 1991 dissertation, Olin Shivers introduces a concept\nof control flow graphs for functional languages, provides an algorithm\nto statically derive a safe approximation of the control flow graph and\nproves this algorithm correct. In our student research project,\nShivers' algorithms and proofs are formalized using the theorem prover\nsystem Isabelle.\n\nThis package contains the Haskell prototype of the Isabelle\nformalization, together with some pretty printing and rendering\nfacilities. It is provided as a reference, not as a ready-to-use library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."HPDF" or (buildDepError "HPDF"))
          (hsPkgs."language-dot" or (buildDepError "language-dot"))
          ];
        };
      };
    }