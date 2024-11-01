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
      identifier = { name = "shake-pack"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/shake-pack";
      url = "";
      synopsis = "Shake File Pack Rule";
      description = "Shake rule for tar-ing and compressing files with bzip2.\nUses bz2 C library on the system.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."shake" or (errorHandler.buildDepError "shake"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
        ];
        buildable = true;
      };
    };
  }