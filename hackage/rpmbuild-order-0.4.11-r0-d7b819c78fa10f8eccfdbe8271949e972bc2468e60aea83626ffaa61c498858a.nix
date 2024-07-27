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
      identifier = { name = "rpmbuild-order"; version = "0.4.11"; };
      license = "BSD-3-Clause";
      copyright = "2010-2018  Henning Thielemann,\n2018-2024 Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>,\nHenning Thielemann <haskell@henning-thielemann.de>";
      homepage = "https://github.com/juhp/rpmbuild-order";
      url = "";
      synopsis = "Sort RPM packages in dependency order";
      description = "The rpmbuild-order tool sorts source RPM packages by build dependencies,\nso that they can be built in a correct order. It does this by reading RPM\npackage spec files and then topologically sorts them according to their\nbuild dependencies. The code evolved from cabal-sort by Henning Thielemann.\nIt can also order the dependencies or reverse depends of one or more packages\namong the packages checked out in neighboring directories (which can be\nuseful to see what packages are affected when a low-level package changes,\nor which packages are dependents of one of more packages).\nIt also has support for setting RPM options for bcond etc,\nwhich can affect dependencies. It can also output dependency graphs.\nSince version 0.4, a library API is provided.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
        ];
        buildable = true;
      };
      exes = {
        "rpmbuild-order" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
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
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."rpmbuild-order" or (errorHandler.buildDepError "rpmbuild-order"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.rpmbuild-order.components.exes.rpmbuild-order or (pkgs.pkgsBuildBuild.rpmbuild-order or (errorHandler.buildToolDepError "rpmbuild-order:rpmbuild-order")))
          ];
          buildable = true;
        };
      };
    };
  }