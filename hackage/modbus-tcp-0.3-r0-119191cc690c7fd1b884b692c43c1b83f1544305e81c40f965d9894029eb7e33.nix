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
      identifier = { name = "modbus-tcp"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2013–2016 Roel van Dijk, Tim Schwarte";
      maintainer = "Roel van Dijk <roel@lambdacube.nl>";
      author = "Roel van Dijk <roel@lambdacube.nl>, Tim Schwarte <tim@timschwarte.nl>";
      homepage = "https://github.com/roelvandijk/modbus-tcp";
      url = "";
      synopsis = "Communicate with Modbus devices over TCP";
      description = "Implements the Modbus TPC/IP protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }