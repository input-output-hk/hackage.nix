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
      specVersion = "1.8";
      identifier = { name = "x11-xinput"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "http://redmine.iportnov.ru/projects/x11-xinput";
      url = "";
      synopsis = "Haskell FFI bindings for X11 XInput library (-lXi)";
      description = "Haskell FFI bindings for X11 XInput library (-lXi).\nOnly XInput version 2.0 is supported.\nSee XInput manual pages and XInput2.h, XI2.h for more documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."X11" or (errorHandler.buildDepError "X11"))
        ];
        libs = [ (pkgs."Xi" or (errorHandler.sysDepError "Xi")) ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }