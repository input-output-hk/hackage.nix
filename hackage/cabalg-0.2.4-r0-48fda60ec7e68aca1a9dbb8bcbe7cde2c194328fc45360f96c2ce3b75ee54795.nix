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
      identifier = { name = "cabalg"; version = "0.2.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "malikov.d.y@gmail.com";
      author = "Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "alias for cabal install from given git repo";
      description = "Short alias for installing cabal package from git source repository.\n\nI.e.\n\n@\$> cabalg https:\\/\\/github.com\\/biegunka\\/biegunka\n@\n\nis just a shorthand for\n\n@\$> mktemp\n\$> git clone --single-branch --depth=1 --quiet https:\\/\\/github.com\\/biegunka\\/biegunka \\<tempdirname\\>\n\$> cabal install <tempdirname>/<cabalfilename>\n@\n\nIt also supports arbitrary git revisions mentioning like\n\n@\$> cabalg https:\\/\\/github.com\\/biegunka\\/biegunka\\@beefboa\n@\n\nNecessary arguments could be passed to 'cabal install' with '--' delimiter like\n\n@\$> cabalg \\<repo1\\> ... \\<repoN\\> [\\-\\- \\<cabal-install args\\>]\n@\n\nPlease notice, that '--single-branch' flag  comes with git-1.7.10 (<https://lkml.org/lkml/2012/3/28/418>) and later, so you probably want to have it.\n\nIt's supposed to be Windows-compatible (not sure about the tests)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "cabalg" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cabalg" or (buildDepError "cabalg"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }