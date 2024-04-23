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
    flags = { build-demos = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process-azure"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://github.com/haskell-distributed/distributed-process";
      url = "";
      synopsis = "Microsoft Azure backend for Cloud Haskell ";
      description = "This is a proof of concept Azure backend for Cloud Haskell. It\nprovides just enough functionality to run Cloud Haskell\napplications on Azure virtual machines. You need to create your\nvirtual machines in the Azure management portal; you can then\nuse this backend to copy or verify your executable to the\nvirtual machine, start or terminate Cloud Haskell nodes on those\nvirtual machines, and communicate with those virtual machines\nfrom your local machine.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."azure-service-api" or (errorHandler.buildDepError "azure-service-api"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."executable-path" or (errorHandler.buildDepError "executable-path"))
          (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."network-transport" or (errorHandler.buildDepError "network-transport"))
          (hsPkgs."network-transport-tcp" or (errorHandler.buildDepError "network-transport-tcp"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."certificate" or (errorHandler.buildDepError "certificate"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
          (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
        ];
        buildable = true;
      };
      exes = {
        "cloud-haskell-azure-echo" = {
          depends = pkgs.lib.optionals (flags.build-demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-azure" or (errorHandler.buildDepError "distributed-process-azure"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.build-demos then true else false;
        };
        "cloud-haskell-azure-ping" = {
          depends = pkgs.lib.optionals (flags.build-demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-azure" or (errorHandler.buildDepError "distributed-process-azure"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."libssh2" or (errorHandler.buildDepError "libssh2"))
          ];
          buildable = if flags.build-demos then true else false;
        };
        "cloud-haskell-azure-fib" = {
          depends = pkgs.lib.optionals (flags.build-demos) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-process-azure" or (errorHandler.buildDepError "distributed-process-azure"))
            (hsPkgs."distributed-process" or (errorHandler.buildDepError "distributed-process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."binary-generic" or (errorHandler.buildDepError "binary-generic"))
            (hsPkgs."rank1dynamic" or (errorHandler.buildDepError "rank1dynamic"))
            (hsPkgs."distributed-static" or (errorHandler.buildDepError "distributed-static"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = if flags.build-demos then true else false;
        };
      };
    };
  }