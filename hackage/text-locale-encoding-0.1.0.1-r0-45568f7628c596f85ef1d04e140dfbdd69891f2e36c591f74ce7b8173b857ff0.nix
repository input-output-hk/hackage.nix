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
    flags = { trustworthy = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "text-locale-encoding"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kudahkukarek@gmail.com";
      author = "kudah";
      homepage = "https://github.com/exbb2/text-locale-encoding";
      url = "";
      synopsis = "Encode and decode Text to/from ByteString using TextEncoding";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring-handle" or (errorHandler.buildDepError "bytestring-handle"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }