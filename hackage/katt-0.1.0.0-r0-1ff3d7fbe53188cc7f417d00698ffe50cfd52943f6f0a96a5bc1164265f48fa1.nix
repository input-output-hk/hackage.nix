{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "katt"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nilsson.dd+code@gmail.com";
      author = "David Nilsson";
      homepage = "https://github.com/davnils/katt";
      url = "";
      synopsis = "Client for the Kattis judge system.";
      description = "Unofficial CLI client for the Kattis online judge system (currently in BETA).\n\nWritten in a git-like fashion, it supports automatic\ndownloading of test cases, easy submissions, and more.\n\nBasically a problem is initialized as follows\n(creates a directory and downloads any available test cases):\n\n> > katt init hello\n> > cd hello\n\nSource files, problem names, and language identification is handled\nautomatically when submitting solutions:\n\n> > vim hello.java\n> > katt submit\n> Made submission 4712\n> Accepted: 1 of 1 test(s) passed\n\nThere is also built-in support for problem sessions,\nwhich initalizes all problems in the problem list.\n\nGet started by downloading a /.kattisrc/ config from\nthe official site, make sure you have the haskell platform\ninstalled, then run /cabal install katt/.\n\nPlease note that the beta release is limited to C, C++ and Java.\nIt also only supports running on unix.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "katt" = {
          depends = ([
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."ConfigFile" or ((hsPkgs.pkgs-errors).buildDepError "ConfigFile"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."http-streams" or ((hsPkgs.pkgs-errors).buildDepError "http-streams"))
            (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
            (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."url" or ((hsPkgs.pkgs-errors).buildDepError "url"))
            (hsPkgs."zip-archive" or ((hsPkgs.pkgs-errors).buildDepError "zip-archive"))
            ] ++ [
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ]) ++ [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            ];
          buildable = true;
          };
        };
      };
    }