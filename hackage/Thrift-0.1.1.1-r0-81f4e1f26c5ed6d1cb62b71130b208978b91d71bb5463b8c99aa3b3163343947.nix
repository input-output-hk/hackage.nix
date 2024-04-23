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
      specVersion = "1.2";
      identifier = { name = "Thrift"; version = "0.1.1.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "thrift-user-subscribe@incubator.apache.org ";
      author = "";
      homepage = "http://incubator.apache.org/thrift";
      url = "";
      synopsis = "Thrift library package";
      description = "The Thrift Haskell package that shipped with Thrift v.0.3.0, released under the Apache 2.0 license.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
        ];
        buildable = true;
      };
    };
  }