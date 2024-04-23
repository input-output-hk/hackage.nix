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
      identifier = {
        name = "snaplet-sqlite-simple-jwt-auth";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Janne Hellsten";
      maintainer = "jjhellst@gmail.com";
      author = "Janne Hellsten";
      homepage = "https://github.com/nurpax/snaplet-sqlite-simple-jwt-auth#readme";
      url = "";
      synopsis = "Snaplet for JWT authentication with snaplet-sqlite-simple";
      description = "JWT authentication snaplet for snaplet-sqlite-simple.\n\nVery much a work-in-progress, use at your own risk.\n\nMain documentation: <docs/Snap-Snaplet-SqliteSimple-JwtAuth Snap.Snaplet.SqliteSimple.JwtAuth>\n\nFor more info, browse to <http://github.com/nurpax/snaplet-sqlite-simple-jwt-auth> for examples & more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bcrypt" or (errorHandler.buildDepError "bcrypt"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."jwt" or (errorHandler.buildDepError "jwt"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snaplet-sqlite-simple" or (errorHandler.buildDepError "snaplet-sqlite-simple"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }