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
      identifier = { name = "seqid-streams"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/seqid-streams";
      url = "";
      synopsis = "Sequence ID IO-Streams";
      description = "Uniquely identify elements in a sequenced stream";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."seqid" or (errorHandler.buildDepError "seqid"))
          ];
        buildable = true;
        };
      };
    }