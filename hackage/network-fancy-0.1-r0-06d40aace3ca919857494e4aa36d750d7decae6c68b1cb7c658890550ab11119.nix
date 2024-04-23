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
      identifier = { name = "network-fancy"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Taru Karttunen <taruti@taruti.net>";
      maintainer = "taruti@taruti.net";
      author = "Taru Karttunen";
      homepage = "";
      url = "";
      synopsis = "Networking support with a cleaner API";
      description = "Networking support with a cleaner API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        libs = if system.isWindows
          then [ (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32")) ]
          else pkgs.lib.optional (system.isSolaris) (pkgs."socket" or (errorHandler.sysDepError "socket"));
        buildable = true;
      };
      exes = {
        "network-fancy-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          libs = if system.isWindows
            then [ (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32")) ]
            else pkgs.lib.optional (system.isSolaris) (pkgs."socket" or (errorHandler.sysDepError "socket"));
          buildable = true;
        };
      };
    };
  }