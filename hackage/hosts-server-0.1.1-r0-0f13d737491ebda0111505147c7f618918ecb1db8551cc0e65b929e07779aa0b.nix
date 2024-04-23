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
      specVersion = "1.8";
      identifier = { name = "hosts-server"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "yihuang (yi.codeplayer@gmail.com)";
      author = "yihuang (yi.codeplayer@gmail.com)";
      homepage = "https://github.com/yihuang/hosts-server";
      url = "";
      synopsis = "An dns server which is extremely easy to config.";
      description = "An dns server which is extremely easy to config, you can config it like your hosts file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hosts-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
            (hsPkgs."dns" or (errorHandler.buildDepError "dns"))
          ];
          buildable = true;
        };
      };
    };
  }