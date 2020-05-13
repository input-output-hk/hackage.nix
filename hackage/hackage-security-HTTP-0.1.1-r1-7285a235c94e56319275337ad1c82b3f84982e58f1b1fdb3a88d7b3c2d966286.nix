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
    flags = { use-network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hackage-security-HTTP"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "https://github.com/well-typed/hackage-security";
      url = "";
      synopsis = "Hackage security bindings against the HTTP library";
      description = "The hackage security library provides a 'HttpLib'\nabstraction to allow to bind against different HTTP\nlibraries. This library implements this abstraction using\nthe @HTTP@ library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."hackage-security" or (errorHandler.buildDepError "hackage-security"))
          ] ++ (if flags.use-network-uri
          then [
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }