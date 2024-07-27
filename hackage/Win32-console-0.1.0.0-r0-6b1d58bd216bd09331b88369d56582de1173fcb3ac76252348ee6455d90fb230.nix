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
      identifier = { name = "Win32-console"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 siracusa";
      maintainer = "siracusa <pvnsrc@gmail.com>";
      author = "siracusa";
      homepage = "";
      url = "";
      synopsis = "Binding to the Win32 console API";
      description = "This package provides bindings to the Win32 console API types and functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
    };
  }