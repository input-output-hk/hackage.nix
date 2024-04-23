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
    flags = { buildexamples = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "jack"; version = "0.6.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Soenke Hahn, Henning Thielemann";
      homepage = "http://www.haskell.org/haskellwiki/JACK";
      url = "";
      synopsis = "Bindings for the JACK Audio Connection Kit";
      description = "Very basic bindings for the JACK Audio Connection Kit";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."midi" or (errorHandler.buildDepError "midi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."enumset" or (errorHandler.buildDepError "enumset"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        pkgconfig = [
          (pkgconfPkgs."jack" or (errorHandler.pkgConfDepError "jack"))
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
      exes = {
        "amplify" = {
          libs = [ (pkgs."jack" or (errorHandler.sysDepError "jack")) ];
          buildable = if !flags.buildexamples then false else true;
        };
        "impulse-train" = {
          libs = [ (pkgs."jack" or (errorHandler.sysDepError "jack")) ];
          buildable = if !flags.buildexamples then false else true;
        };
        "midimon" = {
          libs = [ (pkgs."jack" or (errorHandler.sysDepError "jack")) ];
          buildable = if !flags.buildexamples then false else true;
        };
      };
    };
  }