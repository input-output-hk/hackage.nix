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
      identifier = { name = "hsrelp"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Denis Afonin <verrens@yandex.ru>";
      author = "Denis Afonin <verrens@yandex.ru>";
      homepage = "https://github.com/verrens/hsrelp";
      url = "";
      synopsis = "RELP (Reliable Event Logging Protocol) server implementation";
      description = "The specification of the RELP protocol:\n<http://www.rsyslog.com/doc/relp.html>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
        ];
        buildable = true;
      };
    };
  }