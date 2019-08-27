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
      specVersion = "1.10";
      identifier = { name = "linearscan-hoopl"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "http://github.com/jwiegley/linearscan-hoopl";
      url = "";
      synopsis = "Makes it easy to use the linearscan register allocator with Hoopl";
      description = "This module provides two convenience features for Hoopl users that wish to\nuse @linearscan@ for register allocation in their compilers.\n\nFirst, it defines a type class called 'NodeAlloc'. After defining an\ninstance of this class for your particular graph node type, simply call\n'LinearScan.Hoopl.allocateHoopl'. This is a simpler interface than using\n@linearscan@ directly, which requires two records of functions that are more\ngeneral in nature than the methods of 'NodeAlloc'.\n\nSecond, it provides a DSL for constructing assembly language DSLs that\ncompile into Hoople program graphs. See the tests for a concrete example.\nThis is mainly useful for constructing tests of intermediate representations.\n\nPlease see the tests for an example of the simple assembly language that is\nused to test the @linearscan@ allocator.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hoopl" or (buildDepError "hoopl"))
          (hsPkgs."linearscan" or (buildDepError "linearscan"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."hoopl" or (buildDepError "hoopl"))
            (hsPkgs."linearscan" or (buildDepError "linearscan"))
            (hsPkgs."linearscan-hoopl" or (buildDepError "linearscan-hoopl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."lens-family-core" or (buildDepError "lens-family-core"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }