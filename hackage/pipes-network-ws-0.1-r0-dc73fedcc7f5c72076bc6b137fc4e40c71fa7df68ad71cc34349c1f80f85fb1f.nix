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
      identifier = { name = "pipes-network-ws"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2018";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-network-ws";
      url = "";
      synopsis = "WebSockets support for pipes.";
      description = "Use WebSockets with the @pipes@ ecosystem.\n\nThis package is organized using the following namespaces:\n\nSee the @changelog@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network-simple-ws" or (errorHandler.buildDepError "network-simple-ws"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
        buildable = true;
        };
      };
    }