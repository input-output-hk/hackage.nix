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
      identifier = { name = "pathwalk"; version = "0.3.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "xena@yolo-swag.com";
      author = "Christine Dodrill";
      homepage = "https://github.com/Xe/pathwalk";
      url = "";
      synopsis = "Path walking utilities for Haskell programs";
      description = "\"System.Directory.PathWalk\" is an implementation of Python's excellent\nos.walk function.  Given a root directory, it recursively scans all\nsubdirectories, calling a callback with directories and files it finds.\nImportantly, it calls the callback as soon as it finishes scanning each\ndirectory to allow the caller to begin processing results immediately.\n\nMaximum memory usage is O(N+M) where N is the depth of the tree and M\nis the maximum number of entries in a particular directory.\n\n> import System.Directory.PathWalk\n>\n> pathWalk \"some/directory\" \$ \\root dirs files -> do\n>   forM_ files \$ \\file ->\n>     when (\".hs\" `isSuffixOf` file) \$ do\n>       putStrLn \$ joinPath [root, file]";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "basic" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pathwalk" or (buildDepError "pathwalk"))
            ];
          };
        "stoprecursing" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pathwalk" or (buildDepError "pathwalk"))
            ];
          };
        "accumulate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pathwalk" or (buildDepError "pathwalk"))
            ];
          };
        "lazy" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pathwalk" or (buildDepError "pathwalk"))
            ];
          };
        };
      };
    }