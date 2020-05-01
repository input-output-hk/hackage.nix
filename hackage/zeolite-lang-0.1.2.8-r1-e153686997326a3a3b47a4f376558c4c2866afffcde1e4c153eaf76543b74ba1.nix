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
      specVersion = "2.0";
      identifier = { name = "zeolite-lang"; version = "0.1.2.8"; };
      license = "Apache-2.0";
      copyright = "(c) Kevin P. Barry 2019-2020";
      maintainer = "Kevin P. Barry <ta0kira@gmail.com>";
      author = "Kevin P. Barry";
      homepage = "https://github.com/ta0kira/zeolite";
      url = "";
      synopsis = "Zeolite is a statically-typed, general-purpose programming language.";
      description = "Zeolite is an experimental general-purpose programming language. See\n<https://github.com/ta0kira/zeolite Zeolite on GitHub> for more details.\n\nThe installation process is still a bit rough, and therefore must be done in a\nfew stages:\n\n* Ensure that you have a C++ compiler such as @clang++@ or @g++@ installed,\nand an archiver such as @ar@ installed, all callable from a shell.\n* Install the binaries using @cabal@. After this step, the compiler itself is\ninstalled, but it cannot actually create executables from source code.\n\n@\ncabal install zeolite-lang\n@\n\n* Execute the setup binary that gets installed by @cabal@. This will give you\na series of prompts to verify the binaries above. It will then\nautomatically build the supporting libraries.\n\n@\nzeolite-setup\n@\n\n* (Optional) Once the setup above is completed, you should run the\nintegration tests to ensure that code can be compiled and run. These can\ntake quite a while to complete. Please create an\n<https://github.com/ta0kira/zeolite/issues issue on GitHub> if you encounter\nany errors.\n\n@\nZEOLITE_PATH=\$(zeolite --get-path)\nzeolite -p \"\$ZEOLITE_PATH\" -t tests lib\\/file lib\\/util\n@\n\nThe <https://github.com/ta0kira/zeolite/tree/master/example code examples> are\nlocated in @\$ZEOLITE_PATH/example@. You should not normally need to use\n@\$ZEOLITE_PATH@ outside of running included tests and examples.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "zeolite-internal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      exes = {
        "zeolite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."zeolite-internal" or (buildDepError "zeolite-internal"))
            ];
          buildable = true;
          };
        "zeolite-setup" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."zeolite-internal" or (buildDepError "zeolite-internal"))
            ];
          buildable = true;
          };
        };
      tests = {
        "zeolite-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."zeolite-internal" or (buildDepError "zeolite-internal"))
            ];
          buildable = true;
          };
        };
      };
    }