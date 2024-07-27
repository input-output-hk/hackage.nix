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
      identifier = { name = "koji-install"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "2021  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/koji-install";
      url = "";
      synopsis = "CLI tool for installing rpms directly from Fedora Koji";
      description = "koji-install can install a koji build/task of a package locally.\nBy default it only downloads newer binaries of already-installed\nsubpackages, but there are options to list and select other packages.\nKoji is the RPM-based buildsystem of Fedora Linux and Centos.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "koji-install" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."http-directory" or (errorHandler.buildDepError "http-directory"))
            (hsPkgs."koji" or (errorHandler.buildDepError "koji"))
            (hsPkgs."rpm-nvr" or (errorHandler.buildDepError "rpm-nvr"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."xdg-userdirs" or (errorHandler.buildDepError "xdg-userdirs"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."http-common" or (errorHandler.buildDepError "http-common"));
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
            (hsPkgs.pkgsBuildBuild.koji-install.components.exes.koji-install or (pkgs.pkgsBuildBuild.koji-install or (errorHandler.buildToolDepError "koji-install:koji-install")))
          ];
          buildable = true;
        };
      };
    };
  }