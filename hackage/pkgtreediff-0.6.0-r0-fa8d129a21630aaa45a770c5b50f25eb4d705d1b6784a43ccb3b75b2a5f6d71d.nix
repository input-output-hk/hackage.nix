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
      specVersion = "1.18";
      identifier = { name = "pkgtreediff"; version = "0.6.0"; };
      license = "GPL-3.0-only";
      copyright = "2019-2022 Jens Petersen";
      maintainer = "juhpetersen@gmail.com";
      author = "Jens Petersen";
      homepage = "https://github.com/juhp/pkgtreediff";
      url = "";
      synopsis = "RPM package tree diff tool";
      description = "Tool for comparing RPM packages and version-releases\nin OS dist trees or instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."rpm-nvr" or (errorHandler.buildDepError "rpm-nvr"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
      };
      exes = {
        "pkgtreediff" = {
          depends = ([
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."koji" or (errorHandler.buildDepError "koji"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-directory" or (errorHandler.buildDepError "http-directory"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."pkgtreediff" or (errorHandler.buildDepError "pkgtreediff"))
            (hsPkgs."rpm-nvr" or (errorHandler.buildDepError "rpm-nvr"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."http-common" or (errorHandler.buildDepError "http-common"));
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.pkgtreediff.components.exes.pkgtreediff or (pkgs.pkgsBuildBuild.pkgtreediff or (errorHandler.buildToolDepError "pkgtreediff:pkgtreediff")))
          ];
          buildable = true;
        };
      };
    };
  }