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
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dotenv"; version = "0.5.2.4"; };
      license = "MIT";
      copyright = "2015-2017 Stack Builders Inc.";
      maintainer = "hackage@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "https://github.com/stackbuilders/dotenv-hs";
      url = "";
      synopsis = "Loads environment variables from dotenv files";
      description = "\nIn most applications,\n<http://12factor.net/config configuration should be separated from code>.\nWhile it usually works well to keep configuration in the\nenvironment, there are cases where you may want to store\nconfiguration in a file outside of version control.\n\n\"Dotenv\" files have become popular for storing configuration,\nespecially in development and test environments. In\n<https://github.com/bkeepers/dotenv Ruby>,\n<https://github.com/theskumar/python-dotenv Python> and\n<https://www.npmjs.com/package/dotenv Javascript> there are libraries\nto facilitate loading of configuration options from configuration\nfiles. This library loads configuration to environment variables for\nprograms written in Haskell.\n\nTo use, call `loadFile` from your application:\n\n> import Configuration.Dotenv\n> loadFile False \"/my/dotenvfile\"\n\nThis package also includes an executable that can be used\nto inspect the results of applying one or more Dotenv files\nto the environment, or for invoking your executables with\nan environment after one or more Dotenv files is applied.\n\nSee the <https://github.com/stackbuilders/dotenv-hs Github>\npage for more information on this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base-compat" or (buildDepError "base-compat"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (buildDepError "void"));
        };
      exes = {
        "dotenv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."dotenv" or (buildDepError "dotenv"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      tests = {
        "dotenv-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."dotenv" or (buildDepError "dotenv"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec-megaparsec" or (buildDepError "hspec-megaparsec"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs."void" or (buildDepError "void"));
          };
        };
      };
    }