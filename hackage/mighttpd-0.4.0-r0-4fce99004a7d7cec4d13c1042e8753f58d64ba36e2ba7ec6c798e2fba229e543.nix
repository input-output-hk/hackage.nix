{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "mighttpd"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
      url = "";
      synopsis = "Simple Web Server in Haskell";
      description = "A simple but practical HTTP server in Haskell.\n'mighttpd' should be called 'mighty'.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mighttpd" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."c10k" or ((hsPkgs.pkgs-errors).buildDepError "c10k"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."webserver" or ((hsPkgs.pkgs-errors).buildDepError "webserver"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."hdaemonize" or ((hsPkgs.pkgs-errors).buildDepError "hdaemonize"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ];
          buildable = true;
          };
        "mkindex" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }