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
      identifier = { name = "rpm-nvr"; version = "0.1.2"; };
      license = "GPL-2.0-only";
      copyright = "2016-2018  Red Hat,\n2017,2021  Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/rpm-nvr";
      url = "";
      synopsis = "RPM package name-version-release data types";
      description = "The library provides types related to RPM package\nname-version-releases. There are modules for reading and showing:\n\n* NV (name-version)\n\n* NVR (name-version-release)\n\n* NVRA (name-version-release.arch)\n\n* VerRel (version-release)\n\n* VerCmp for comparing RPM versions or releases\n(used to order VerRel).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = if compiler.isGhc && compiler.version.lt "7.6"
          then false
          else true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."rpm-nvr" or (errorHandler.buildDepError "rpm-nvr"))
          ];
          buildable = true;
        };
      };
    };
  }