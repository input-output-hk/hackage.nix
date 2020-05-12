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
      identifier = { name = "iconv"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006-2008 Duncan Coutts";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Duncan Coutts <duncan@community.haskell.org>";
      homepage = "";
      url = "";
      synopsis = "String encoding conversion";
      description = "Provides an interface to the POSIX iconv library functions\nfor string encoding conversion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = (pkgs.lib).optional (system.isOsx || system.isFreebsd) (pkgs."iconv" or (errorHandler.sysDepError "iconv"));
        buildable = true;
        };
      };
    }