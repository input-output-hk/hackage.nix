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
      specVersion = "1.6";
      identifier = { name = "hogre"; version = "0.1.5"; };
      license = "MIT";
      copyright = "(c) 2010, 2011 Antti Salonen";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "http://anttisalonen.github.com/hogre";
      url = "";
      synopsis = "Haskell binding to a subset of OGRE";
      description = "This package contains Haskell bindings to a subset of\nOGRE (Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgen" or (errorHandler.buildDepError "cgen"))
        ];
        libs = [ (pkgs."OgreMain" or (errorHandler.sysDepError "OgreMain")) ];
        pkgconfig = pkgs.lib.optional (!system.isWindows) (pkgconfPkgs."OGRE" or (errorHandler.pkgConfDepError "OGRE"));
        build-tools = [
          (hsPkgs.pkgsBuildBuild.cgen.components.exes.cgen or (pkgs.pkgsBuildBuild.cgen or (errorHandler.buildToolDepError "cgen:cgen")))
          (hsPkgs.pkgsBuildBuild.grgen.components.exes.grgen or (pkgs.pkgsBuildBuild.grgen or (errorHandler.buildToolDepError "grgen:grgen")))
          (hsPkgs.pkgsBuildBuild.cgen-hs.components.exes.cgen-hs or (pkgs.pkgsBuildBuild.cgen-hs or (errorHandler.buildToolDepError "cgen-hs:cgen-hs")))
        ];
        buildable = true;
      };
    };
  }