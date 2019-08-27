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
      specVersion = "1.8";
      identifier = { name = "dclabel"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Deian Stefan, Alejandro Russo, John C. Mitchell, David Mazieres";
      maintainer = "Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "Deian Stefan, Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "The Disjunction Category Label Format";
      description = "The /DC Label/ (DCLabel) library provides dynamic information\nflow control label format in the form of conjunctions of\ndisjunctions of principals. Most code should import module\n\"DCLabel.Safe\"; trusted code should import \"DCLabel.TCB\".\nThe core functionality of the library is documented in\n\"DCLabel.Core\", while the small EDSL used to create labels is\ndocuments in \"DCLabel.NanoEDSL\". DCLabel was implemented by David\nMazieres (<http://www.scs.stanford.edu/~dm/>), Deian Stefan\n(<http://www.scs.stanford.edu/~deian/>), and Alejandro Russo\n(<http://www.cse.chalmers.se/~russo/>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."dclabel" or (buildDepError "dclabel"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            ];
          };
        };
      };
    }