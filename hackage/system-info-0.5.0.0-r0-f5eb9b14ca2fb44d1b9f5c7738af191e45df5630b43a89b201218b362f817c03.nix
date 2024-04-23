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
      specVersion = "1.12";
      identifier = { name = "system-info"; version = "0.5.0.0"; };
      license = "MIT";
      copyright = "2020 (c) ChaosGroup";
      maintainer = "daniel.taskoff@gmail.com";
      author = "Daniel Taskoff";
      homepage = "https://github.com/ChaosGroup/system-info#readme";
      url = "";
      synopsis = "Get the name of the operating system";
      description = "Please see the README on Github at <https://github.com/ChaosGroup/system-info#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"));
        libs = pkgs.lib.optionals (system.isWindows) [
          (pkgs."ole32" or (errorHandler.sysDepError "ole32"))
          (pkgs."oleaut32" or (errorHandler.sysDepError "oleaut32"))
          (pkgs."wbemuuid" or (errorHandler.sysDepError "wbemuuid"))
        ];
        buildable = true;
      };
    };
  }