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
      specVersion = "1.8";
      identifier = { name = "hat"; version = "2.9.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2000-2015 Hat team";
      maintainer = "oc@kent.ac.uk";
      author = "Hat team";
      homepage = "http://projects.haskell.org/hat/";
      url = "";
      synopsis = "The Haskell tracer, generating and viewing Haskell execution traces";
      description = "hat-trans transforms Module.hs into Hat/Module.hs such that when the program is\nexecuted, a trace file Programname.hat is generated.\nVarious tools (hat-trail, hat-observe, hat-explore ...) then allow viewing the\ntrace file in different ways, to locate a bug or understand how a program works.\n\nHat 2.9 uses the haskell-src-exts parser and other Hackage libraries to\nreduce its own size and simplify extensions. Module imports and exports have\nalso been improved to handle nearly all kinds of renaming, hiding, etc.\n\nHat 2.9 works only with ghc for Haskell 98 (plus a few extensions) and\nthe standard Haskell 98 libraries plus some Haskell 2010 libraries.\nAlthough it should build on any operating system,\nmost viewing tools use ASCII console escape sequences and they open xterms;\nhence they will only work well under Unix and X11.\nTested on MacOS X 10.9.5.\n\nInstallation:\n\n> cabal -v install\n\nFlag -v allows you to see what is going on. Building takes a long time\n(one module has 25.000 lines of code).\nDon't worry about numerous warning messages. The tracing transformation does produce\ncode with lots of overlapping patterns.\n\nUse:\n\n> hat-make MyProgram.hs\n\ntransforms and compiles all modules of your program and produces the tracing\nversion Hat/MyProgram.\n\nRun your program\n\n> Hat/MyProgram\n\nwhich will produce trace files MyProgram.hat*\n\nUse the viewing tools to explore the trace:\n\n> hat-trail / hat-observe / hat-explore /...   MyProgram\n\nThere is documentation in the \"docs\" folder, but it is partially outdated.\nThere are a few small programs for exploring tracing in the \"examples\" folder.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          ];
        buildable = true;
        };
      exes = {
        "hat-trans" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        "hat-trail" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "hat-observe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."polyparse" or (buildDepError "polyparse"))
            ];
          buildable = true;
          };
        "hat-stack" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "hat-explore" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "hat-detect" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            ];
          buildable = true;
          };
        "hat-check" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "hat-view" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        "hat-cover" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "black-hat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "hat-nonterm" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "hat-anim" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "pretty-hat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "hat-delta" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "hat-make" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }