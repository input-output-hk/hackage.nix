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
      specVersion = "1.2";
      identifier = { name = "portaudio"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 John Van Enk";
      maintainer = "vanenkj@gmail.com";
      author = "John Van Enk";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings for the PortAudio library.";
      description = "Bindings to the cross platform PortAudio library. Version 0.0.1 excludes the callback model.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        libs = [ (pkgs."portaudio" or (errorHandler.sysDepError "portaudio")) ];
        buildable = true;
      };
    };
  }