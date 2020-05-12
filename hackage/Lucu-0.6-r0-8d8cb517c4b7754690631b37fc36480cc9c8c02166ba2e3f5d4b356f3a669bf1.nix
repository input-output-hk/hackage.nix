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
    flags = { build-lucu-implant-file = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "Lucu"; version = "0.6"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/Lucu.html";
      url = "";
      synopsis = "HTTP Daemonic Library";
      description = "Lucu is an HTTP daemonic library. It can be embedded in any\nHaskell program and runs in an independent thread.\nLucu is not a replacement for Apache. It is intended to be\nused to create an efficient web-based application without\nmessing around FastCGI. It is also intended to be run behind a\nreverse-proxy so it doesn't have some facilities like logging,\nclient filtering or such like.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dataenc" or (errorHandler.buildDepError "dataenc"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-http" or (errorHandler.buildDepError "time-http"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
        buildable = true;
        };
      exes = {
        "lucu-implant-file" = {
          buildable = if flags.build-lucu-implant-file then true else false;
          };
        };
      };
    }