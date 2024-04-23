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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hat"; version = "2.9.3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2000-2017 Hat team";
      maintainer = "oc@kent.ac.uk";
      author = "Hat team";
      homepage = "http://projects.haskell.org/hat/";
      url = "";
      synopsis = "The Haskell tracer, generating and viewing Haskell execution traces";
      description = "hat-trans transforms Module.hs into Hat/Module.hs such that when the program is\nexecuted, a trace file Programname.hat is generated.\nVarious tools (hat-trail, hat-observe, hat-explore ...) then allow viewing the\ntrace file in different ways, to locate a bug or understand how a program works.\nHat 2.9 uses the haskell-src-exts parser and other Hackage libraries to\nreduce its own size and simplify extensions. Module imports and exports have\nalso been improved to handle nearly all kinds of renaming, hiding, etc.\nHat 2.9 works only with ghc for Haskell 98 (plus a few extensions) and\nthe standard Haskell 98 libraries plus some Haskell 2010 libraries.\nAlthough it should build on any operating system,\nmost viewing tools use ASCII console escape sequences and they open xterms;\nhence they will only work well under Unix and X11.\nTested on MacOS X 10.11.6.\nInstallation:\n> cabal -v install\nFlag -v allows you to see what is going on. Building takes a long time\n(one module has 25.000 lines of code).\nSome compiler warnings have been turned off. The tracing transformation does produce\ncode with lots of overlapping patterns.\nUse:\n> hat-make MyProgram.hs\ntransforms and compiles all modules of your program and produces the tracing\nversion Hat/MyProgram.\nRun your program\n> Hat/MyProgram\nwhich will produce trace files MyProgram.hat*\nUse the viewing tools to explore the trace:\n> hat-trail / hat-observe / hat-explore /...   MyProgram\nThere is documentation in the \"docs\" folder, but it is partially outdated.\nThere are a few small programs for exploring tracing in the \"examples\" folder.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
        ];
        buildable = true;
      };
      exes = {
        "hat-trans" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
        "hat-trail" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "hat-observe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."polyparse" or (errorHandler.buildDepError "polyparse"))
          ];
          buildable = true;
        };
        "hat-stack" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "hat-explore" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "hat-detect" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ];
          buildable = true;
        };
        "hat-check" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "hat-view" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "hat-cover" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          buildable = true;
        };
        "black-hat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "hat-nonterm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
        "hat-anim" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "pretty-hat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "hat-delta" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "hat-make" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }