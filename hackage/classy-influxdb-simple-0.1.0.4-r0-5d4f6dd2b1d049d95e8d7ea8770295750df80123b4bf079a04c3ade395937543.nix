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
      identifier = { name = "classy-influxdb-simple"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sean Chalmers";
      maintainer = "sclhiannan@gmail.com.au";
      author = "Sean Chalmers";
      homepage = "https://github.com/mankyKitty/classy-influxdb-simple#readme";
      url = "";
      synopsis = "Super simple InfluxDB package in Classy-MTL style";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."async-io-either" or (errorHandler.buildDepError "async-io-either"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }