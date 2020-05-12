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
      identifier = { name = "snap-auth-cli"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dima@dzhus.org";
      author = "Dmitry Dzhus";
      homepage = "https://github.com/dzhus/snap-auth-cli#readme";
      url = "";
      synopsis = "Command-line tool to manage Snap AuthManager database";
      description = "This utility provides command-line interface to user database of standard authentication system for the Snap web framework. You can create, read and update users, set passwords, roles and meta information. Currently only JsonFile backend is supported. Type `snap-auth-cli -?` to get usage information, or see README.md for details.";
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
            (hsPkgs."snaplet-sqlite-simple" or (errorHandler.buildDepError "snaplet-sqlite-simple"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }