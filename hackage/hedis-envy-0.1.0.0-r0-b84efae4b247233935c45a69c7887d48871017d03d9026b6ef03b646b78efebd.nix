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
      specVersion = "2.2";
      identifier = { name = "hedis-envy"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 IIJ Innovation Institute, Inc.";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "IIJ Innovation Institute, Inc.";
      homepage = "https://github.com/igrep/hedis-envy#readme";
      url = "";
      synopsis = "";
      description = "Provides FromEnv instance for ConnectInfo of hedis";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hedis" or (errorHandler.buildDepError "hedis"))
          (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
        ];
        buildable = true;
      };
    };
  }