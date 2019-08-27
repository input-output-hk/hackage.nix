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
      specVersion = "2.4";
      identifier = { name = "co-log"; version = "0.3.0.0"; };
      license = "MPL-2.0";
      copyright = "2018-2019 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Dmitrii Kovanikov";
      homepage = "https://github.com/kowainik/co-log";
      url = "";
      synopsis = "Composable Contravariant Comonadic Logging Library";
      description = "The default implementation of logging based on\n[co-log-core](http://hackage.haskell.org/package/co-log-core).\n\nThe ideas behind this package are described in the following blog post:\n\n* [co-log: Composable Contravariant Combinatorial Comonadic Configurable Convenient Logging](https://kowainik.github.io/posts/2018-09-25-co-log)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."co-log-core" or (buildDepError "co-log-core"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."chronos" or (buildDepError "chronos"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."typerep-map" or (buildDepError "typerep-map"))
          ];
        };
      exes = {
        "play-colog" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."co-log" or (buildDepError "co-log"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."typerep-map" or (buildDepError "typerep-map"))
            ];
          };
        "readme" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."co-log" or (buildDepError "co-log"))
            (hsPkgs."co-log-core" or (buildDepError "co-log-core"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (buildToolDepError "markdown-unlit")))
            ];
          };
        "tutorial-intro" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."co-log" or (buildDepError "co-log"))
            (hsPkgs."co-log-core" or (buildDepError "co-log-core"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (buildToolDepError "markdown-unlit")))
            ];
          };
        "tutorial-custom" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."co-log" or (buildDepError "co-log"))
            (hsPkgs."co-log-core" or (buildDepError "co-log-core"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit or (buildToolDepError "markdown-unlit")))
            ];
          };
        };
      tests = {
        "test-co-log" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."co-log" or (buildDepError "co-log"))
            (hsPkgs."co-log-core" or (buildDepError "co-log-core"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            ];
          };
        };
      };
    }