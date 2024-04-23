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
      identifier = { name = "fbrnch"; version = "0.7.2"; };
      license = "GPL-2.0-only";
      copyright = "2019-2021 Jens Petersen";
      maintainer = "petersen@fedoraproject.org";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/fbrnch";
      url = "";
      synopsis = "Build and create Fedora package repos and branches";
      description = "fbrnch is a convenient packaging tool for Fedora Packagers,\nwith integration for Bugzilla, Koji, and Bodhi.\n\nFeatures include:\n\n- merging and building a package across release branches\n\n- automated parallel builds of sets of packages in dependency order\n\n- creating, updating and listing one's package reviews\n\n- requesting repos for new approved packages and branch requests\n\n- import srpms from package reviews\n\n- progressive copr builds\n\n- and many more commands.";
      buildType = "Simple";
    };
    components = {
      sublibs = {
        "bodhi-internal" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          ];
          buildable = true;
        };
        "copr-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
          buildable = true;
        };
        "fedora-dists-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."fbrnch".components.sublibs.pdc-internal or (errorHandler.buildDepError "fbrnch:pdc-internal"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "koji-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haxr" or (errorHandler.buildDepError "haxr"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
        "pagure-internal" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          ];
          buildable = true;
        };
        "pdc-internal" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
      exes = {
        "fbrnch" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fbrnch".components.sublibs.bodhi-internal or (errorHandler.buildDepError "fbrnch:bodhi-internal"))
            (hsPkgs."bugzilla-redhat" or (errorHandler.buildDepError "bugzilla-redhat"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."config-ini" or (errorHandler.buildDepError "config-ini"))
            (hsPkgs."fbrnch".components.sublibs.copr-internal or (errorHandler.buildDepError "fbrnch:copr-internal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."email-validate" or (errorHandler.buildDepError "email-validate"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."fbrnch".components.sublibs.fedora-dists-internal or (errorHandler.buildDepError "fbrnch:fedora-dists-internal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-directory" or (errorHandler.buildDepError "http-directory"))
            (hsPkgs."http-query" or (errorHandler.buildDepError "http-query"))
            (hsPkgs."fbrnch".components.sublibs.koji-internal or (errorHandler.buildDepError "fbrnch:koji-internal"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."fbrnch".components.sublibs.pagure-internal or (errorHandler.buildDepError "fbrnch:pagure-internal"))
            (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."rpmbuild-order" or (errorHandler.buildDepError "rpmbuild-order"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
        };
      };
    };
  }