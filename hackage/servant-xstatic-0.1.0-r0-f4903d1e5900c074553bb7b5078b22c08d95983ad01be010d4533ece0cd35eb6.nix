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
      specVersion = "1.12";
      identifier = { name = "servant-xstatic"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tdecacqu@redhat.com";
      author = "Tristan Cacqueray";
      homepage = "https://github.com/TristanCacqueray/haskell-xstatic#readme";
      url = "";
      synopsis = "XStatic adapter for servant";
      description = "Use this library to serve XStatic through servant.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."xstatic" or (errorHandler.buildDepError "xstatic"))
        ];
        buildable = true;
      };
    };
  }