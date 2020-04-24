{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { web = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "packdeps"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://packdeps.haskellers.com/";
      url = "";
      synopsis = "Check your cabal packages for lagging dependencies.";
      description = "This provides a library and command line tool for checking if the upper bounds in your package's dependency list excludes the newest package available. The code was originally available only as a web interface at <http://packdeps.haskellers.com/>, but is now available for standalone use as well.\n\nThe command line tool has an incredibly simple interface: simply pass it a list of cabal files, and it will tell you what dependencies- if any- are restricted.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      exes = {
        "packdeps" = {
          depends = (pkgs.lib).optionals (!flags.web) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."packdeps" or ((hsPkgs.pkgs-errors).buildDepError "packdeps"))
            ];
          buildable = if flags.web then false else true;
          };
        "packdeps-yesod" = {
          depends = (pkgs.lib).optionals (flags.web) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."packdeps" or ((hsPkgs.pkgs-errors).buildDepError "packdeps"))
            (hsPkgs."hamlet" or ((hsPkgs.pkgs-errors).buildDepError "hamlet"))
            (hsPkgs."yesod-newsfeed" or ((hsPkgs.pkgs-errors).buildDepError "yesod-newsfeed"))
            (hsPkgs."yesod" or ((hsPkgs.pkgs-errors).buildDepError "yesod"))
            ];
          buildable = if flags.web then true else false;
          };
        };
      };
    }