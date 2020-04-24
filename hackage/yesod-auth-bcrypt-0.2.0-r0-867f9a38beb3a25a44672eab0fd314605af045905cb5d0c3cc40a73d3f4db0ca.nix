{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "yesod-auth-bcrypt"; version = "0.2.0"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."yesod-core" or ((hsPkgs.pkgs-errors).buildDepError "yesod-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yesod-persistent" or ((hsPkgs.pkgs-errors).buildDepError "yesod-persistent"))
          (hsPkgs."yesod-form" or ((hsPkgs.pkgs-errors).buildDepError "yesod-form"))
          (hsPkgs."yesod-auth" or ((hsPkgs.pkgs-errors).buildDepError "yesod-auth"))
          (hsPkgs."bcrypt" or ((hsPkgs.pkgs-errors).buildDepError "bcrypt"))
          ];
        buildable = true;
        };
      };
    }