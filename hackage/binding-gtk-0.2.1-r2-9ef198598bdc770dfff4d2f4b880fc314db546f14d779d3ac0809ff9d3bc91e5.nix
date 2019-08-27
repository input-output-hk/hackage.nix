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
      specVersion = "1.9.2";
      identifier = { name = "binding-gtk"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@accursoft.org";
      author = "Gideon Sireling";
      homepage = "https://github.com/accursoft/binding";
      url = "";
      synopsis = "Data Binding in Gtk2Hs";
      description = "Bind mutable data and lists to Gtk2Hs widgets.\nExamples are provided by the included demo programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."gtk" or (buildDepError "gtk"))
          (hsPkgs."binding-core" or (buildDepError "binding-core"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      tests = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."binding-core" or (buildDepError "binding-core"))
            (hsPkgs."binding-gtk" or (buildDepError "binding-gtk"))
            ];
          };
        "lists" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."gtk" or (buildDepError "gtk"))
            (hsPkgs."binding-core" or (buildDepError "binding-core"))
            (hsPkgs."binding-gtk" or (buildDepError "binding-gtk"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }