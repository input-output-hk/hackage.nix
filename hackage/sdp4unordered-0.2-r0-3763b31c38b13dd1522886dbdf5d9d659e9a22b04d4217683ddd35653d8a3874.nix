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
      identifier = { name = "sdp4unordered"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Andrey Mulik";
      maintainer = "work.a.mulik@gmail.com";
      author = "Andrey Mulik";
      homepage = "";
      url = "";
      synopsis = "SDP classes for unordered containers";
      description = "Implementation of SDP core classes for unordered containers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdp" or (errorHandler.buildDepError "sdp"))
          (hsPkgs."sdp-hashable" or (errorHandler.buildDepError "sdp-hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }