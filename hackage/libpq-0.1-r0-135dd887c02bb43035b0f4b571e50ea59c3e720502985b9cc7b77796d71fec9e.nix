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
      identifier = { name = "libpq"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grant@tnarg.com";
      author = "Grant Monroe";
      homepage = "http://github.com/tnarg/haskell-libpq";
      url = "";
      synopsis = "libpq binding for Haskell";
      description = "This binding uses the libpq asynchronous API in\ncombination with threadWaitRead and\nthreadWaitWrite to take advantage of the I/O\nmanager.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
        libs = [ (pkgs."pq" or (errorHandler.sysDepError "pq")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }