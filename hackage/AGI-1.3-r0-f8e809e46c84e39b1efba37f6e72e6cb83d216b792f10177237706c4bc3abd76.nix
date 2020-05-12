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
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "AGI"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "SeeReason Partners <partners@seereason.com>";
      author = "Jeremy Shaw";
      homepage = "http://src.seereason.com/haskell-agi";
      url = "";
      synopsis = "A library for writing AGI scripts for Asterisk";
      description = "Asterisk is an open-source Voice over IP server (VoIP).\nAsterisk provides an Asterisk Gateway Interface (AGI), which\ncan be used to write external programs that interact with\nAsterisk. It is typically used for creating Interactive Voice\nResponse (IVR) systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ] ++ (if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }