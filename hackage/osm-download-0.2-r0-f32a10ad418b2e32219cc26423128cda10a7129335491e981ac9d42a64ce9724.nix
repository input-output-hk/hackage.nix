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
      identifier = { name = "osm-download"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas.DuBuisson@gmail.com";
      author = "Rob Stewart, Thomas M. DuBuisson";
      homepage = "";
      url = "";
      synopsis = "Download Open Street Map tiles";
      description = "Download and locally cache open street map tiles based on HTTP\ncache control headers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."gps" or (errorHandler.buildDepError "gps"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."monadIO" or (errorHandler.buildDepError "monadIO"))
          (hsPkgs."stm-chans" or (errorHandler.buildDepError "stm-chans"))
          ];
        buildable = true;
        };
      };
    }