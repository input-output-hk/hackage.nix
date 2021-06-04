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
      identifier = { name = "opentracing-zipkin-v2"; version = "0.2.0"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2017-2018 Kim Altintop";
      maintainer = "Kim Altintop <kim.altintop+opentracing@gmail.com>";
      author = "Kim Altintop";
      homepage = "https://github.com/kim/opentracing";
      url = "";
      synopsis = "Zipkin V2 backend for OpenTracing";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."opentracing" or (errorHandler.buildDepError "opentracing"))
          (hsPkgs."opentracing-zipkin-common" or (errorHandler.buildDepError "opentracing-zipkin-common"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }