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
    flags = { example = false; documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-service"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2014 Moritz Angermann";
      maintainer = "moritz@lichtzwerge.de";
      author = "Moritz Angermann";
      homepage = "https://github.com/angerman/network-service";
      url = "";
      synopsis = "Provide a service at the data type level.";
      description = "Thin very layer over network-simple, that allows to write\na service that can be communicated with at the data level.\nMakes it trivial to build a services upon a data type,\nprovided a ByteString serialization can be given.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or (errorHandler.buildDepError "hscolour"));
        buildable = true;
        };
      exes = {
        "echo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }