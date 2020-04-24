{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "follower"; version = "0.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "reb@cs.bilgi.edu.tr";
      author = "R. Emre Başar";
      homepage = "http://rebworks.net/projects/follower/";
      url = "";
      synopsis = "Follow Tweets anonymously";
      description = "A simple program for following Twitter posts anonymously.\n\nIf you plan to follow posts on Twitter, but do not want to create a user account this is the tool for you. With follower, you can create follow lists and track the tweets you haven't read before.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "follower" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."hs-twitter" or ((hsPkgs.pkgs-errors).buildDepError "hs-twitter"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        };
      };
    }