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
      identifier = { name = "rpmostree-update"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2022-2023  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/rpmostree-update";
      url = "";
      synopsis = "rpm-ostree update wrapper that caches change info";
      description = "A thin wrapper of \"rpm-ostree update\", which outputs diff of changes\nrelative to the previous pull. This is useful if you rpm-ostree update\nSilverblue or Kinoite etc several times between actual reboots into\nthe latest deployment.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "rpmostree-update" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          ];
          buildable = true;
        };
      };
    };
  }