{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "nikepub"; version = "1.1.2"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "uwe@codemanic.com";
      author = "Uwe Hoffmann";
      homepage = "http://www.codemanic.com/uwe";
      url = "";
      synopsis = "Command line utility publishes Nike+ runs on blogs and Twitter";
      description = "Simple commandline program that given a Nike+ user id will fetch the\nmost recent Nike+ run and publish it to any blog and/or Twitter account.\nAssumes the Nike+ user profile is public. Supports customizable templates\nfor the blog entry title, body and Twitter status update. Any blogging\nsystem with XML-RPC support for metaWeblog.newPost\n(like WordPress or MovableType) is supported.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nikepub" = {
          depends = [
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."GoogleChart" or ((hsPkgs.pkgs-errors).buildDepError "GoogleChart"))
            (hsPkgs."haxr" or ((hsPkgs.pkgs-errors).buildDepError "haxr"))
            (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."hs-twitter" or ((hsPkgs.pkgs-errors).buildDepError "hs-twitter"))
            (hsPkgs."HStringTemplate" or ((hsPkgs.pkgs-errors).buildDepError "HStringTemplate"))
            ];
          buildable = true;
          };
        };
      };
    }