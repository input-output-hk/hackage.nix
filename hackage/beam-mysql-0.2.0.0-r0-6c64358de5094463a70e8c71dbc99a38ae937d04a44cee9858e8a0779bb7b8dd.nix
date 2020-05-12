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
    flags = { werror = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "beam-mysql"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "travis@athougies.net";
      author = "Travis Athougies";
      homepage = "https://github.com/tathougies/beam-mysql";
      url = "";
      synopsis = "Connection layer between beam and MySQL/MariaDB";
      description = "Beam driver for MySQL or MariaDB databases, two popular open-source databases.\nSupports most beam features, but does not yet have support for \"beam-migrate\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."beam-core" or (errorHandler.buildDepError "beam-core"))
          (hsPkgs."mysql" or (errorHandler.buildDepError "mysql"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          ];
        buildable = true;
        };
      };
    }