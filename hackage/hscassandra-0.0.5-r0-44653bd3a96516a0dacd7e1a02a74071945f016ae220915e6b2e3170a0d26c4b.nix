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
      specVersion = "1.6";
      identifier = { name = "hscassandra"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kirk@glyphsoftware.com,\nnecrobious@gmail.com";
      author = "Kirk Peterson ";
      homepage = "https://github.com/necrobious/hscassandra";
      url = "";
      synopsis = "cassandra database interface ";
      description = "A simple abstration over the Cassandra Thrift bindings designed to make working with Cassandra's thrift API easier, without removing the ability to use it directly.\nA Cassandra monad is presented for mannaging the connection to the Cassandra server, and the calculation of cassandra timestams (in microseconds).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."Thrift" or (errorHandler.buildDepError "Thrift"))
          (hsPkgs."cassandra-thrift" or (errorHandler.buildDepError "cassandra-thrift"))
        ];
        buildable = true;
      };
    };
  }