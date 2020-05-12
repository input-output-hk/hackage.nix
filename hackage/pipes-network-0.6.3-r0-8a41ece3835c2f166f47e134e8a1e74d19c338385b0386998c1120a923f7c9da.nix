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
      identifier = { name = "pipes-network"; version = "0.6.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2012-2014, Paolo Capriotti 2012-2012.";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-network";
      url = "";
      synopsis = "Use network sockets together with the pipes library.";
      description = "Use network sockets together with the @pipes@ library.\n\nThis package is organized using the following namespaces:\n\n* \"Pipes.Network.TCP\" exports pipes and utilities for using TCP connections in\na streaming fashion.\n\n* \"Pipes.Network.TCP.Safe\" subsumes \"Pipes.Network.TCP\", exporting pipes and\nfunctions that allow you to safely establish new TCP connections within a\npipeline using the @pipes-safe@ facilities. You only need to use this module\nif you want to safely acquire and release operating system resources within a\npipeline.\n\nSee the @changelog@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }