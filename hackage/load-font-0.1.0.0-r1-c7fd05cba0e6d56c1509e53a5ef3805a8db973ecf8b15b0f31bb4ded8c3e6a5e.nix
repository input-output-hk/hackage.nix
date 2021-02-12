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
      identifier = { name = "load-font"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Aditya Siram";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/load-font#readme";
      url = "";
      synopsis = "A cross platform library for loading bundled fonts into your application";
      description = "Please see the README on Github at <https://github.com/deech/font-load#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      exes = {
        "load-font-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
            (hsPkgs."load-font" or (errorHandler.buildDepError "load-font"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }