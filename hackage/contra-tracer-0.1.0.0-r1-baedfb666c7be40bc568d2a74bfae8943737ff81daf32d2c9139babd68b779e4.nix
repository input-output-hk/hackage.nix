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
      specVersion = "1.10";
      identifier = { name = "contra-tracer"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019-2021 Input Output (Hong Kong) Ltd., 2019-2021 Well-Typed LLP, 2019-2021 Alexander Vieth";
      maintainer = "aovieth@gmail.com";
      author = "Alexander Vieth";
      homepage = "";
      url = "";
      synopsis = "Arrow and contravariant tracers";
      description = "A simple interface for logging, tracing and monitoring";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.5") (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"));
        buildable = true;
      };
    };
  }