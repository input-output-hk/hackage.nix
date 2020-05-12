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
      specVersion = "1.8";
      identifier = { name = "gist"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "simon@joyful.com";
      author = "Simon Michael";
      homepage = "http://github.com/simonmichael/gist";
      url = "";
      synopsis = "A reliable command-line client for gist.github.com";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "gist" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }