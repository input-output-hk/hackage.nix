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
      specVersion = "2.2";
      identifier = { name = "opentracing-zipkin-v1"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2017-2018 Kim Altintop";
      maintainer = "Kim Altintop <kim.altintop+opentracing@gmail.com>";
      author = "Kim Altintop";
      homepage = "https://github.com/kim/opentracing";
      url = "";
      synopsis = "Zipkin V1 backend for OpenTracing";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."opentracing" or (errorHandler.buildDepError "opentracing"))
          (hsPkgs."opentracing-zipkin-common" or (errorHandler.buildDepError "opentracing-zipkin-common"))
          (hsPkgs."pinch" or (errorHandler.buildDepError "pinch"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          ];
        buildable = true;
        };
      };
    }