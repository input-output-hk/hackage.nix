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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "zoom-cache-sndfile"; version = "1.0.0.0"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Conrad Parker <conrad@metadecks.org>";
      author = "Conrad Parker";
      homepage = "";
      url = "";
      synopsis = "Tools for generating zoom-cache-pcm files";
      description = "zoom-cache-sndfile provides tools for encoding and dumping zoom-cache-pcm files.\nSee the zoom-cache-pcm and zoom-cache packages for more information about\nzoom-cache files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "zoom-cache-sndfile" = {
          depends = [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."hsndfile" or (errorHandler.buildDepError "hsndfile"))
            (hsPkgs."hsndfile-vector" or (errorHandler.buildDepError "hsndfile-vector"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."ui-command" or (errorHandler.buildDepError "ui-command"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."zoom-cache" or (errorHandler.buildDepError "zoom-cache"))
            (hsPkgs."zoom-cache-pcm" or (errorHandler.buildDepError "zoom-cache-pcm"))
            ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }