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
      identifier = { name = "digestive-functors-hsp"; version = "0.4.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://src.seereason.com/digestive-functors-hsp";
      url = "";
      synopsis = "HSP support for digestive-functors";
      description = "This is an HSP frontend for the digestive-functors library.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."hsp" or (errorHandler.buildDepError "hsp"))
          (hsPkgs."hsx" or (errorHandler.buildDepError "hsx"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        build-tools = pkgs.lib.optional (!system.isWindows) (hsPkgs.buildPackages.trhsx.components.exes.trhsx or (pkgs.buildPackages.trhsx or (errorHandler.buildToolDepError "trhsx:trhsx")));
        buildable = true;
      };
    };
  }