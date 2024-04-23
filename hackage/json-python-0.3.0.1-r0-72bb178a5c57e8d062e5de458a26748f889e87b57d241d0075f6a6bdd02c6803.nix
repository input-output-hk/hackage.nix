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
      identifier = { name = "json-python"; version = "0.3.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "russell.s.stewart@gmail.com";
      author = "Russell Stewart";
      homepage = "http://stewart.guru";
      url = "";
      synopsis = "Call python inline from haskell";
      description = "WARNING: Project in alpha. Call python from haskell with ease.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
        ];
        pkgconfig = [
          (pkgconfPkgs."python" or (errorHandler.pkgConfDepError "python"))
        ];
        buildable = true;
      };
    };
  }