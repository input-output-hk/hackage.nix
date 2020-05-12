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
      identifier = { name = "winio"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2007-2009 Felix Martini";
      maintainer = "felix@felixmartini.com";
      author = "";
      homepage = "http://github.com/felixmar/winio";
      url = "";
      synopsis = "I/O library for Windows";
      description = "I/O library for Windows with I/O completion port support.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."winerror" or (errorHandler.buildDepError "winerror"))
          ];
        libs = [
          (pkgs."kernel32" or (errorHandler.sysDepError "kernel32"))
          (pkgs."ws2_32" or (errorHandler.sysDepError "ws2_32"))
          ];
        buildable = true;
        };
      };
    }