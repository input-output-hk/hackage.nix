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
      identifier = { name = "hly"; version = "0.11"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2010-2011";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hly";
      url = "";
      synopsis = "Haskell LilyPond";
      description = "A very lightweight embedding of the lilypond\ntypesetting model in haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmt" or (errorHandler.buildDepError "hmt"))
          ];
        buildable = true;
        };
      };
    }