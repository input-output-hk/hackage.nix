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
      identifier = { name = "rasa-example-config"; version = "0.1.3"; };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Example user config for Rasa";
      description = "Example user config for Rasa";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rasa" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."rasa" or (buildDepError "rasa"))
            (hsPkgs."rasa-ext-views" or (buildDepError "rasa-ext-views"))
            (hsPkgs."rasa-ext-vim" or (buildDepError "rasa-ext-vim"))
            (hsPkgs."rasa-ext-style" or (buildDepError "rasa-ext-style"))
            (hsPkgs."rasa-ext-cursors" or (buildDepError "rasa-ext-cursors"))
            (hsPkgs."rasa-ext-status-bar" or (buildDepError "rasa-ext-status-bar"))
            (hsPkgs."rasa-ext-logger" or (buildDepError "rasa-ext-logger"))
            (hsPkgs."rasa-ext-files" or (buildDepError "rasa-ext-files"))
            (hsPkgs."rasa-ext-slate" or (buildDepError "rasa-ext-slate"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }