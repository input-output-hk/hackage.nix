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
      specVersion = "1.2";
      identifier = { name = "hack"; version = "2009.4.23"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/hack/tree/master";
      url = "";
      synopsis = "a sexy Haskell Webserver Interface";
      description = "Hack: a sexy Haskell Webserver Interface\n========================================\nHack is a brain-dead port of the brilliant Ruby Rack <http://rack.rubyforge.org/> webserver interface.\nWhat does a Hack app look like\nmodule Main where\nimport Hack\nimport Hack.Handler.Kibro\nhello :: Application\nhello = \\env -> return $ Response\n{ status  = 200\n, headers = [ (\"Content-Type\", \"text/plain\") ]\n, body    = \"Hello World\"\n}\nmain = run hello";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cgi" or (errorHandler.buildDepError "cgi"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mps" or (errorHandler.buildDepError "mps"))
          (hsPkgs."kibro" or (errorHandler.buildDepError "kibro"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."template" or (errorHandler.buildDepError "template"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        buildable = true;
        };
      };
    }