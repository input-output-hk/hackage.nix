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
      identifier = { name = "stm-chans"; version = "3.0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2011--2021 wren gayle romano";
      maintainer = "wren@cpan.org";
      author = "wren gayle romano, Thomas DuBuisson";
      homepage = "http://wrengr.org";
      url = "";
      synopsis = "Additional types of channels for STM.";
      description = "Additional types of channels for STM.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }