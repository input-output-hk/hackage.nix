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
    flags = { buildexamples = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "threepenny-gui"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heinrich Apfelmus <apfelmus at quantentunnel dot de>";
      author = "Chris Done, Heinrich Apfelmus";
      homepage = "http://github.com/HeinrichApfelmus/threepenny-gui";
      url = "";
      synopsis = "Small GUI framework that uses the web browser as a display.";
      description = "Threepenny-GUI is a small GUI framework that uses the web browser as a display.\n\nIt's cheap and easy to install because everyone has a web browser installed.\n\nInternally, the library implements a small web server\nthat serves a HTML/JavaScript page with the GUI elements.\nYou can freely manipulate the HTML DOM and handle browser events\nfrom your Haskell code.\n\nStability forecast: This is an experimental release! Send us your feedback!\nBasic functionality should work.\nSignificant API changes are likely in future versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."snap-server" or (buildDepError "snap-server"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "threepenny-examples-bartab" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "threepenny-examples-buttons" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "threepenny-examples-dragndropexample" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "threepenny-examples-missing-dollars" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."safe" or (buildDepError "safe"))
            ];
          };
        "threepenny-examples-use-words" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          };
        "threepenny-examples-chat" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."time" or (buildDepError "time"))
            ];
          };
        };
      };
    }