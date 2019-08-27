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
    flags = { small_base = true; no_curses = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "darcs-cabalized"; version = "2.0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "<gwern0@gmail.com>";
      author = "David Roundy <droundy@darcs.net>, <darcs-devel@darcs.net>, et al.";
      homepage = "http://darcs.net/";
      url = "";
      synopsis = "David's Advanced Version Control System";
      description = "Darcs is a revision control system, along the lines of CVS or arch.\nThat means that it keeps track of various revisions and branches of\nyour project, allows for changes to propagate from one branch to another.\nDarcs is intended to be an _advanced_ revision control system.\nDarcs has two particularly distinctive features which differ from other,\ncentralized, revision control systems:\n\n* each copy of the source is a fully functional branch, and\n\n* underlying darcs is a consistent and powerful theory of patches.\n\nThe Darcs repository can be found at <http://darcs.net/>.\n\nThis is an unofficial package of Darcs, using Cabal; problems with it may well\nbe the fault of the packager and not the Darcs project.";
      buildType = "Configure";
      };
    components = {
      exes = {
        "darcs" = {
          depends = [
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."html" or (buildDepError "html"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."unix" or (buildDepError "unix"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."containers" or (buildDepError "containers"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          libs = if flags.no_curses
            then [ (pkgs."z" or (sysDepError "z")) ]
            else [
              (pkgs."z" or (sysDepError "z"))
              (pkgs."curses" or (sysDepError "curses"))
              ];
          };
        };
      };
    }