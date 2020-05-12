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
      specVersion = "1.4";
      identifier = { name = "ioctl"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "uzytkownik2@gmail.com";
      author = "Maciej Piechotka";
      homepage = "";
      url = "";
      synopsis = "Type-safe I/O control package";
      description = "Package allowing type-safe I/O control";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }