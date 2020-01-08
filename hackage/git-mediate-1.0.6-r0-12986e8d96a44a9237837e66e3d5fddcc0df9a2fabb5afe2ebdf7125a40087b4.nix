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
      identifier = { name = "git-mediate"; version = "1.0.6"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/git-mediate";
      url = "";
      synopsis = "Tool to help resolving git conflicts";
      description = "Git conflict resolution has never been easier\n\nWhen encountering a conflict, you can sometimes\nimagine: if only I could have applied one of\nthese patches BEFORE the other rather than\nconcurrently, I wouldn't be in this mess!\n\nWell, with git-mediate, you can!\n\nIn any conflicted state - git-mediate shows you\nthe 2 diffs involved. By applying these diffs to\nthe base version and the other version, you\nemulate the situation where the patch had already\nexisted when the other had been applied.\n\nReapply git-mediate, it will validate that you've\nindeed applied it correctly, and bam: conflict\ndisappeared!\n\nGit-mediate also lets you handle modify/delete\nconflicts (there's no sane way in git to show\nwhat the modification actually was)\n\nGit-mediate also streamlines jumping to the\nconflicts with your editor, either with the `-e`\noption to invoke your editor, or via the standard\nline number format, which is parsed by all major\neditors, to allow use of \"jump to next error\"\nkeys.\n\nGit-mediate especially shines with automatic\nsource transformation tools such as renamers.\n\nIn a conflicted state, re-apply a rename that\ncaused the conflict, run git-mediate without\nopening any files, and the conflicts are gone!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "git-mediate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base-compat" or (buildDepError "base-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."unix-compat" or (buildDepError "unix-compat"))
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }