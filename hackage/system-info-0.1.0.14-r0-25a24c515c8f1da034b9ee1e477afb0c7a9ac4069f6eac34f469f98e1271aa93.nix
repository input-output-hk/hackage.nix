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
      specVersion = "1.18";
      identifier = { name = "system-info"; version = "0.1.0.14"; };
      license = "MIT";
      copyright = "2016 ChaosGroup";
      maintainer = "daniel.taskoff@chaosgroup.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/ChaosGroup/system-info";
      url = "";
      synopsis = "Get information about CPUs, memory, etc.";
      description = "An OS independent Haskell library for getting information about CPUs, memory, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        libs = (pkgs.lib).optionals (system.isWindows) [
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."oleaut32" or (errorHandler.sysDepError "oleaut32"))
          (pkgs."wbemuuid" or (errorHandler.sysDepError "wbemuuid"))
          ];
        buildable = true;
        };
      tests = {
        "system-info-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."system-info" or (errorHandler.buildDepError "system-info"))
            ];
          buildable = true;
          };
        };
      };
    }