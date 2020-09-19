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
      specVersion = "1.10";
      identifier = { name = "rpmbuild-order"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "2010-2018  Henning Thielemann,\n2018-2020 Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>,\nJens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/rpmbuild-order";
      url = "";
      synopsis = "Order RPM packages by dependencies";
      description = "The rpmbuild-order tool orders RPM packages by dependencies, so that they can\nbe built in the correct order. It does this by reading RPM package spec files\nand then topologically sorts them according to their dependencies.\nThe code evolved from cabal-sort by Henning Thielemann.\nIt can also output the ordered dependencies or reverse depends\nfor one or more packages, provided all the packages are checked out\nin neighboring directories. This is also useful to see what packages\nare affected when a low-level package changes. It also has support\nfor setting RPM options for bcond etc, which can affect dependencies.\nSince version 0.4, a library API is also provided.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
        buildable = true;
        };
      exes = {
        "rpmbuild-order" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."rpmbuild-order" or (errorHandler.buildDepError "rpmbuild-order"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rpmbuild-order" or (errorHandler.buildDepError "rpmbuild-order"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }