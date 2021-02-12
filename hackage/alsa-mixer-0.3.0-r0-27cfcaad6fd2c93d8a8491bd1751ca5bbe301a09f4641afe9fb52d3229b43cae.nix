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
      identifier = { name = "alsa-mixer"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2014-2018 Thomas Tuegel";
      maintainer = "Thomas Tuegel <ttuegel@mailbox.org>";
      author = "Thomas Tuegel <ttuegel@mailbox.org>";
      homepage = "https://github.com/ttuegel/alsa-mixer";
      url = "";
      synopsis = "Bindings to the ALSA simple mixer API.";
      description = "This package provides bindings to the ALSA simple mixer API.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."alsa-core" or (errorHandler.buildDepError "alsa-core"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        libs = [ (pkgs."asound" or (errorHandler.sysDepError "asound")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
        buildable = true;
        };
      };
    }