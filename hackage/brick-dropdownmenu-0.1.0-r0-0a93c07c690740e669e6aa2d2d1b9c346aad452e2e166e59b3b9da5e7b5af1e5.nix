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
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "brick-dropdownmenu"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/brick-dropdownmenu#readme";
      url = "";
      synopsis = "A drop-down menu widget for brick.";
      description = "A simple drop-down menu widget for the declarative text user interface library brick.\nEach submenu and menu item can have an associated global key binding.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."brick" or (buildDepError "brick"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
          (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
          (hsPkgs."pointedlist" or (buildDepError "pointedlist"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vty" or (buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "brick-dropdownmenu-demo" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."brick-dropdownmenu" or (buildDepError "brick-dropdownmenu"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-ghc" or (buildDepError "microlens-ghc"))
            (hsPkgs."microlens-th" or (buildDepError "microlens-th"))
            (hsPkgs."pointedlist" or (buildDepError "pointedlist"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."vty" or (buildDepError "vty"))
            ];
          buildable = if flags.demo then true else false;
          };
        };
      };
    }