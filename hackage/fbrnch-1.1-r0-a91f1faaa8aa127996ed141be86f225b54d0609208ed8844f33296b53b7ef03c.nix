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
      specVersion = "2.0";
      identifier = { name = "fbrnch"; version = "1.1"; };
      license = "GPL-2.0-only";
      copyright = "2019-2022 Jens Petersen";
      maintainer = "Jens Petersen <petersen@fedoraproject.org>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/fbrnch";
      url = "";
      synopsis = "Build and create Fedora package repos and branches";
      description = "fbrnch (fedora branch) is a convenient packaging tool for\nFedora Packagers, with integration for Bugzilla, Koji, and Bodhi.\n\nFeatures include:\n\n- merging and building a package across release branches\n\n- automated parallel builds of sets of packages in dependency order\n\n- creating, updating and listing one's package reviews\n\n- requesting repos for new approved packages and branch requests\n\n- import srpms from package reviews\n\n- progressive copr builds\n\nand many more commands.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fbrnch" = {
          depends = ([
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bodhi" or (errorHandler.buildDepError "bodhi"))
            (hsPkgs."bugzilla-redhat" or (errorHandler.buildDepError "bugzilla-redhat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."copr-api" or (errorHandler.buildDepError "copr-api"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."fedora-dists" or (errorHandler.buildDepError "fedora-dists"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-directory" or (errorHandler.buildDepError "http-directory"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."koji" or (errorHandler.buildDepError "koji"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pagure" or (errorHandler.buildDepError "pagure"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."rpmbuild-order" or (errorHandler.buildDepError "rpmbuild-order"))
            (hsPkgs."rpm-nvr" or (errorHandler.buildDepError "rpm-nvr"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.3") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."http-common" or (errorHandler.buildDepError "http-common"));
          buildable = true;
        };
      };
    };
  }