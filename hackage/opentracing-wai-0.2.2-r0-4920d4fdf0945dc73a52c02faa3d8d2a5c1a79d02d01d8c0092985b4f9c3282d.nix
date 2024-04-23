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
      identifier = { name = "opentracing-wai"; version = "0.2.2"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2017-2018 Kim Altintop";
      maintainer = "Kim Altintop <kim.altintop+opentracing@gmail.com>";
      author = "Kim Altintop";
      homepage = "https://github.com/kim/opentracing";
      url = "";
      synopsis = "Middleware adding OpenTracing tracing for WAI applications";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."opentracing" or (errorHandler.buildDepError "opentracing"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
        ];
        buildable = true;
      };
    };
  }