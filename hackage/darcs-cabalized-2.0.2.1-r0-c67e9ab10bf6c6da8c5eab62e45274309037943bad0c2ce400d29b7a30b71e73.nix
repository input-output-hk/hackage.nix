{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."html" or ((hsPkgs.pkgs-errors).buildDepError "html"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]);
          libs = if flags.no_curses
            then [ (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z")) ]
            else [
              (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z"))
              (pkgs."curses" or ((hsPkgs.pkgs-errors).sysDepError "curses"))
              ];
          buildable = true;
          };
        };
      };
    }