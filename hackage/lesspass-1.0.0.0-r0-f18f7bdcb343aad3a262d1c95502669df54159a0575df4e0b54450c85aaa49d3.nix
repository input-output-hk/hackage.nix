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
      specVersion = "3.0";
      identifier = { name = "lesspass"; version = "1.0.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "daniel@appsforhumans.org";
      author = "Daniel Garcia Briseno";
      homepage = "";
      url = "";
      synopsis = "The Stateless Password Manager";
      description = "Haskell implementation for lesspass, the stateless password manager.\nRemoves the dependency on Python and allows for distributable binaries\nwith the same functionality. See [LessPass](https://lesspass.com/)";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lesspass" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
          ];
          libs = [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
          buildable = true;
        };
      };
    };
  }