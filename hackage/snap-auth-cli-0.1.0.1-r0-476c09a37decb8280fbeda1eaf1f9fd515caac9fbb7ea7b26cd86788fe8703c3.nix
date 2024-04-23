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
      identifier = { name = "snap-auth-cli"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/snap-auth-cli";
      url = "";
      synopsis = "Command-line tool to manage Snap AuthManager database";
      description = "This utility provides command-line interface to user\ndatabase of standard authentication system for\nthe Snap web framework. You can create, read and\nupdate users, set passwords, roles and meta\ninformation. Currently only JsonFile backend is\nsupported. Type @snap-auth-cli -?@ to get usage\ninformation, or see\n<https://github.com/dzhus/snap-auth-cli/blob/master/README.org>\nfor details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "snap-auth-cli" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."clientsession" or (errorHandler.buildDepError "clientsession"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          ];
          buildable = true;
        };
      };
    };
  }