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
      identifier = { name = "commander"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 James Wilson";
      maintainer = "me@unbui.lt";
      author = "James Wilson";
      homepage = "https://github.com/jsdw/hs-commander";
      url = "";
      synopsis = "pattern matching against string based commands";
      description = "An extensible, format-agnostic command parsing library designed\nto be easy to use and syntactically light weight.\n\nAssuming we write a parser to convert a command such as\n\n@calculator add 1 2 -v=yes@\n\nInto path and flags such as @[\"calculator\", \"add\"]@ and @Map.fromList [(\"v\",\"yes\")]@,\nThis library will then match said path and flags against a nested record type of\ncommands built up using lightweight monadic syntax and tries to execute\nthe associated function if the matching and value converting works, or returns\nan error if the path/flags fail to match any command.\n\nTo get started, see the documentation for the @Commander@ module\nbelow. Additionally, an /examples/ folder is included in the source\nillustrating usage - see https://github.com/jsdw/hs-commander for\nmore.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "example1" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."commander" or (buildDepError "commander"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      tests = {
        "commander-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."commander" or (buildDepError "commander"))
            ];
          buildable = true;
          };
        };
      };
    }