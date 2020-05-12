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
      identifier = { name = "http-server"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Galois Inc";
      homepage = "http://code.galois.com/";
      url = "";
      synopsis = "A library fro writing Haskell web servers.";
      description = "A library fro writing Haskell web servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }