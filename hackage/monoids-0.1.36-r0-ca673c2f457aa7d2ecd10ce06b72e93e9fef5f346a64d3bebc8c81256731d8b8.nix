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
    flags = {
      bytestring = true;
      fingertree = true;
      parallel = true;
      stm = true;
      quickcheck = true;
      text = true;
      reflection = true;
      parsec = true;
      mtl = true;
      overloaded-strings = true;
      optimize = false;
      };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "monoids"; version = "0.1.36"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader";
      url = "";
      synopsis = "Monoids, specialized containers and a general map/reduce framework";
      description = "Monoids, specialized containers and a general map/reduce framework";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((((([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."category-extras" or (buildDepError "category-extras"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          ] ++ (pkgs.lib).optional (flags.bytestring) (hsPkgs."bytestring" or (buildDepError "bytestring"))) ++ (pkgs.lib).optional (flags.fingertree) (hsPkgs."fingertree" or (buildDepError "fingertree"))) ++ (pkgs.lib).optional (flags.parallel) (hsPkgs."parallel" or (buildDepError "parallel"))) ++ (pkgs.lib).optional (flags.text) (hsPkgs."text" or (buildDepError "text"))) ++ (pkgs.lib).optional (flags.stm) (hsPkgs."stm" or (buildDepError "stm"))) ++ (pkgs.lib).optional (flags.quickcheck) (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))) ++ (pkgs.lib).optional (flags.reflection) (hsPkgs."reflection" or (buildDepError "reflection"))) ++ (pkgs.lib).optional (flags.parsec) (hsPkgs."parsec" or (buildDepError "parsec"))) ++ (pkgs.lib).optional (flags.mtl) (hsPkgs."mtl" or (buildDepError "mtl"));
        buildable = true;
        };
      };
    }