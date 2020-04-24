{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "pubsub"; version = "0.10"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Sigbjorn Finne";
      maintainer = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      author = "Sigbjorn Finne <sigbjorn.finne@gmail.com>";
      homepage = "http://projects.haskell.org/pubsub/";
      url = "";
      synopsis = "A library for Google/SixApart pubsub hub interaction";
      description = "A package for setting up, sending and receiving PubSub requests to pubsub hubs,\n<http://pubsubhubbub.googlecode.com/svn/trunk/pubsubhubbub-core-0.1.html>\n\nGit repository available at <git://coming.soon/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          (hsPkgs."mime" or ((hsPkgs.pkgs-errors).buildDepError "mime"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "pubsub.fcgi" = {
          depends = [
            (hsPkgs."fastcgi" or ((hsPkgs.pkgs-errors).buildDepError "fastcgi"))
            ];
          buildable = true;
          };
        "feeder" = { buildable = true; };
        };
      };
    }