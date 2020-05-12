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
    flags = { debug-db = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "coin"; version = "1.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Piotr Borek <piotrborek@op.pl>";
      author = "Piotr Borek <piotrborek@op.pl>";
      homepage = "https://bitbucket.org/borekpiotr/coin";
      url = "";
      synopsis = "Simple account manager";
      description = "Simple account manager";
      buildType = "Simple";
      };
    components = {
      exes = {
        "coin" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."glib" or (errorHandler.buildDepError "glib"))
            (hsPkgs."gtk3" or (errorHandler.buildDepError "gtk3"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
            (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
          pkgconfig = [
            (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
            ];
          buildable = true;
          };
        };
      };
    }