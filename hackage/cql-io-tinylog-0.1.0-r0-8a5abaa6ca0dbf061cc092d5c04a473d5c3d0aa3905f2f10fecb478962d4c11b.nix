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
      specVersion = "2.0";
      identifier = { name = "cql-io-tinylog"; version = "0.1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "roman@pkaboo.org";
      author = "Roman S. Borschel";
      homepage = "https://gitlab.com/romanb/cql-io-tinylog";
      url = "";
      synopsis = "Tinylog integration for cql-io.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cql-io" or (errorHandler.buildDepError "cql-io"))
          (hsPkgs."tinylog" or (errorHandler.buildDepError "tinylog"))
        ];
        buildable = true;
      };
    };
  }