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
      identifier = { name = "serial"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "fred.ross@epfl.ch";
      author = "Frederick Ross";
      homepage = "";
      url = "";
      synopsis = "POSIX serial port wrapper";
      description = "Provides a clean interface to working with POSIX serial ports in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }