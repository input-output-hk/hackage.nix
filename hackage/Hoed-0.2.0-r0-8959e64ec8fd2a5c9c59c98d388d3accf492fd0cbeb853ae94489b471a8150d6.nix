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
    flags = { buildexamples = false; validate = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Hoed"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2000 Andy Gill, (c) 2010 University of Kansas, (c) 2013-2014 Maarten Faddegon";
      maintainer = "hoed@maartenfaddegon.nl";
      author = "Maarten Faddegon";
      homepage = "http://maartenfaddegon.nl";
      url = "";
      synopsis = "Lighweight algorithmic debugging based on observing intermediate values and the cost centre stack.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."libgraph" or (buildDepError "libgraph"))
          (hsPkgs."RBTree" or (buildDepError "RBTree"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ];
        buildable = true;
        };
      exes = {
        "hoed-examples-Foldl" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-HeadOnEmpty1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-HeadOnEmpty2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-IndirectRecursion" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Pretty" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Example1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Example3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Example4" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Insort1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Insort2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer4" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-DoublingServer5" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Hashmap" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-Responsibility" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-TightRope1" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-TightRope2" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-TightRope3" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-examples-AskName" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        "hoed-tests-DoublingServer" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Insort2" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Example1" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Example3" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-Example4" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        "hoed-tests-IndirectRecursion" = {
          depends = (pkgs.lib).optionals (flags.validate) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Hoed" or (buildDepError "Hoed"))
            (hsPkgs."threepenny-gui" or (buildDepError "threepenny-gui"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = if flags.validate then true else false;
          };
        };
      };
    }