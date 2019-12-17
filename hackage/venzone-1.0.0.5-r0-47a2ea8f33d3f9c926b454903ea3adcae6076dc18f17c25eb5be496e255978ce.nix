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
    flags = { crea-release = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "venzone"; version = "1.0.0.5"; };
      license = "GPL-3.0-only";
      copyright = "© 2019 Francesco Ariis et al. (check README)";
      maintainer = "fa-ml@ariis.it";
      author = "Francesco Ariis";
      homepage = "http://ariis.it/static/articles/venzone/page.html";
      url = "";
      synopsis = "ASCII platform-adventure game";
      description = "Steal the Earthquake Poleaxe from the Orcolat\nand save your valley. Binaries and more info in the\n<http://www.ariis.it/static/articles/venzone/page.html game page>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "venzone" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal-game" or (buildDepError "ansi-terminal-game"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."fsnotify" or (buildDepError "fsnotify"))
            (hsPkgs."line-drawing" or (buildDepError "line-drawing"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."utf8-light" or (buildDepError "utf8-light"))
            ];
          buildable = true;
          };
        "packerino" = {
          depends = (pkgs.lib).optionals (flags.crea-release) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            ];
          buildable = if flags.crea-release then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."ansi-terminal-game" or (buildDepError "ansi-terminal-game"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."line-drawing" or (buildDepError "line-drawing"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."utf8-light" or (buildDepError "utf8-light"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }