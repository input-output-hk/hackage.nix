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
      identifier = { name = "yesod-auth-bcrypt"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Oliver Hunt <oliver.huntuk@gmail.com>";
      author = "Oliver Hunt";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "BCrypt salted and hashed passwords in a database as auth for yesod";
      description = "BCrypt salted and hashed passwords in a database as auth for yesod";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yesod-persistent" or (errorHandler.buildDepError "yesod-persistent"))
          (hsPkgs."yesod-form" or (errorHandler.buildDepError "yesod-form"))
          (hsPkgs."yesod-auth" or (errorHandler.buildDepError "yesod-auth"))
          (hsPkgs."bcrypt" or (errorHandler.buildDepError "bcrypt"))
        ];
        buildable = true;
      };
    };
  }