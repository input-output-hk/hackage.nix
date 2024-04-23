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
      identifier = { name = "sdp-binary"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrey Mulik";
      maintainer = "work.a.mulik@gmail.com";
      author = "Andrey Mulik";
      homepage = "";
      url = "";
      synopsis = "Binary instances for SDP";
      description = "SDP extension for binary serialisation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdp" or (errorHandler.buildDepError "sdp"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
        ];
        buildable = true;
      };
    };
  }