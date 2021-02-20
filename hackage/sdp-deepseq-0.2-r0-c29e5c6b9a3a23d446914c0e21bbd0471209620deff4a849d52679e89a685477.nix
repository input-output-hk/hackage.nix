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
      identifier = { name = "sdp-deepseq"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrey Mulik";
      maintainer = "<work.a.mulik@gmail.com>";
      author = "Andrey Mulik";
      homepage = "";
      url = "";
      synopsis = "DeepSeq SDP extension.";
      description = "Provides NFData instances for SDP structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sdp" or (errorHandler.buildDepError "sdp"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }