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
    flags = { build-example = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "s-cargot"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "©2018 Getty Ritter";
      maintainer = "Getty Ritter <s-cargot@infinitenegativeutility.com>";
      author = "Getty Ritter <s-cargot@infinitenegativeutility.com>";
      homepage = "https://github.com/aisamanra/s-cargot";
      url = "";
      synopsis = "A flexible, extensible s-expression library.";
      description = "S-Cargot is a library for working with s-expressions in\na modular and extensible way, opting for genericity and\nflexibility instead of speed. Instead of understanding\none particular form of s-expression, the S-Cargot library\nexposes tools for parsing or emitting different kinds of\ns-expressions, including features not normally included\nin an s-expression library like reader macros or tight\ncontrol over indentation in pretty-printing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."s-cargot" or (buildDepError "s-cargot"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "s-cargot-qc" = {
          depends = [
            (hsPkgs."s-cargot" or (buildDepError "s-cargot"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        "s-cargot-printparse" = {
          depends = [
            (hsPkgs."s-cargot" or (buildDepError "s-cargot"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }