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
    flags = { editline = true; readline = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "alms"; version = "0.4.9.1"; };
      license = "BSD-3-Clause";
      copyright = "2010, Jesse A. Tov";
      maintainer = "tov@ccs.neu.edu";
      author = "Jesse A. Tov <tov@ccs.neu.edu>";
      homepage = "http://www.ccs.neu.edu/~tov/pubs/alms";
      url = "";
      synopsis = "a practical affine language";
      description = "Alms is a general-purpose programming language that supports practical\naffine types. To offer the expressiveness of Girard’s linear logic while\nkeeping the type system light and convenient, Alms uses expressive kinds\nthat minimize notation while maximizing polymorphism between affine and\nunlimited types.\nA key feature of Alms is the ability to introduce abstract affine types\nvia ML-style signature ascription. In Alms, an interface can impose\nstiffer resource usage restrictions than the principal usage\nrestrictions of its implementation. This form of sealing allows the type\nsystem to naturally and directly express a variety of resource\nmanagement protocols from special-purpose type systems.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "alms" = {
          depends = [
            (hsPkgs."haskell98" or (buildDepError "haskell98"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."array" or (buildDepError "array"))
            ] ++ (if flags.readline
            then [ (hsPkgs."readline" or (buildDepError "readline")) ]
            else (pkgs.lib).optional (flags.editline) (hsPkgs."editline" or (buildDepError "editline")));
          };
        };
      };
    }