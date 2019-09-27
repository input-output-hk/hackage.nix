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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "questioner"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "(c) 2014 Pedro Tacla Yamada";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/haskell-questioner.git";
      url = "";
      synopsis = "A package for prompting values from the command-line.";
      description = "This is still being developed";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."terminal-size" or (buildDepError "terminal-size"))
          (hsPkgs."readline" or (buildDepError "readline"))
          ];
        buildable = true;
        };
      exes = {
        "questioner-list-prompt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."questioner" or (buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        "questioner-checkbox-prompt" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."questioner" or (buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        "questioner-spinner" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."questioner" or (buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        "questioner-progressbar" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."questioner" or (buildDepError "questioner"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      };
    }