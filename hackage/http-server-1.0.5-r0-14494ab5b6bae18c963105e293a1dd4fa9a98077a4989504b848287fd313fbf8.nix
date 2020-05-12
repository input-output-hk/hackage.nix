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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-server"; version = "1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diatchki@galois.com";
      author = "Galois, Inc.";
      homepage = "https://github.com/GaloisInc/http-server";
      url = "";
      synopsis = "A library for writing Haskell web servers.";
      description = "A library for writing Haskell web servers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
          (hsPkgs."url" or (errorHandler.buildDepError "url"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      };
    }