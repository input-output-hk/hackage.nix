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
      identifier = { name = "maxent-learner-hw-gui"; version = "0.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "2016-2017 George Steel and Peter Jurgec";
      maintainer = "george.steel@gmail.com";
      author = "George Steel";
      homepage = "https://github.com/george-steel/maxent-learner";
      url = "";
      synopsis = "GUI for maxent-learner-hw";
      description = "This is a GUI frontent for maxent-learner-hw using GTK.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "phono-learner-hw-gui" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."maxent-learner-hw" or (buildDepError "maxent-learner-hw"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."gtk3" or (buildDepError "gtk3"))
            (hsPkgs."glib" or (buildDepError "glib"))
            (hsPkgs."frpnow" or (buildDepError "frpnow"))
            (hsPkgs."frpnow-gtk3" or (buildDepError "frpnow-gtk3"))
            (hsPkgs."raw-strings-qq" or (buildDepError "raw-strings-qq"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tuple" or (buildDepError "tuple"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."cairo" or (buildDepError "cairo"))
            (hsPkgs."Chart" or (buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (buildDepError "Chart-cairo"))
            ];
          };
        };
      };
    }