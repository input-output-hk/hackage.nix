{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { small_base = true; curses = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "darcs-cabalized"; version = "2.0.2.2"; };
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
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."html" or (errorHandler.buildDepError "html"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ] ++ (if flags.small_base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          libs = [
            (pkgs."z" or (errorHandler.sysDepError "z"))
          ] ++ pkgs.lib.optionals (flags.curses) [
            (pkgs."curses" or (errorHandler.sysDepError "curses"))
            (pkgs."curl" or (errorHandler.sysDepError "curl"))
          ];
          buildable = true;
        };
      };
    };
  }