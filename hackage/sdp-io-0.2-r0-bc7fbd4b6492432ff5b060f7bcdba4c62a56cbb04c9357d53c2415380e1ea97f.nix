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
      identifier = { name = "sdp-io"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrey Mulik";
      maintainer = "work.a.mulik@gmail.com";
      author = "Andrey Mulik";
      homepage = "";
      url = "";
      synopsis = "SDP IO extension";
      description = "SDP utils for input/output";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fmr" or (errorHandler.buildDepError "fmr"))
          (hsPkgs."sdp" or (errorHandler.buildDepError "sdp"))
        ];
        buildable = true;
      };
    };
  }