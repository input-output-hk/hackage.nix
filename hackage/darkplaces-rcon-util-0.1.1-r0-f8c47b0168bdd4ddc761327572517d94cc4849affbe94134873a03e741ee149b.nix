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
    flags = { linuxstatic = false; old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "darkplaces-rcon-util"; version = "0.1.1"; };
      license = "GPL-2.0-only";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/darkplaces-rcon";
      url = "";
      synopsis = "Darplaces rcon utility";
      description = "This is implementation of rcon shell for darkplaces engine.\nFor more info visit https://github.com/bacher09/darkplaces-rcon/blob/master/darkplaces-rcon-util/README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."HostAndPort" or (errorHandler.buildDepError "HostAndPort"))
          (hsPkgs."darkplaces-text" or (errorHandler.buildDepError "darkplaces-text"))
          (hsPkgs."darkplaces-rcon" or (errorHandler.buildDepError "darkplaces-rcon"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          ] ++ (if flags.old-locale
          then [
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            ]
          else [ (hsPkgs."time" or (errorHandler.buildDepError "time")) ]);
        buildable = true;
        };
      exes = {
        "drcon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."darkplaces-text" or (errorHandler.buildDepError "darkplaces-text"))
            (hsPkgs."darkplaces-rcon" or (errorHandler.buildDepError "darkplaces-rcon"))
            (hsPkgs."darkplaces-rcon-util" or (errorHandler.buildDepError "darkplaces-rcon-util"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            ];
          buildable = true;
          };
        };
      tests = {
        "rcon-util-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."darkplaces-rcon-util" or (errorHandler.buildDepError "darkplaces-rcon-util"))
            (hsPkgs."darkplaces-rcon" or (errorHandler.buildDepError "darkplaces-rcon"))
            (hsPkgs."darkplaces-text" or (errorHandler.buildDepError "darkplaces-text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }