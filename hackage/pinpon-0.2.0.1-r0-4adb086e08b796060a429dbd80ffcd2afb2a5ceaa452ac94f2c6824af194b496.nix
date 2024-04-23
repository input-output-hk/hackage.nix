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
    flags = {
      pinpon-executable = true;
      pinpon-gpio-executable = true;
      pinpon-ring-executable = true;
      test-doctests = true;
      test-hlint = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "pinpon"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018, Quixoftic, LLC";
      maintainer = "Drew Hess <dhess-src@quixoftic.com>";
      author = "Drew Hess <dhess-src@quixoftic.com>";
      homepage = "https://github.com/quixoftic/pinpon#readme";
      url = "";
      synopsis = "A gateway for various cloud notification services";
      description = "@pinpon@ is a gateway for various cloud notification services, such\nas the Amazon AWS SNS service.\n\nThink of @pinpon@ as a hub for dispatching notifications originating\nfrom multiple notification sources. Clients of the @pinpon@ service\ncreate topics and send notifications via the REST-ish @pinpon@\nservice, and the @pinpon@ server takes care of the per-service\ndetails and communicating with the upstream cloud services.\n\nAdvantages of this approach, compared to programming directly to the\nindividual notification services' interfaces, are:\n\n* A common API for all supported notification services.\n\n* The secret credentials required to communicate with each cloud\nnotification service can be kept in a central location (namely,\nthe @pinpon@ server), rather than being distributed to each\nnotification source host, therefore reducing the attack surface.\n\n* Hosts which send notifications via the @pinpon@ gateway can be\nfirewalled from the public Internet. This is especially useful in\nIoT applications.\n\nCurrently-supported notification services:\n\n* Amazon AWS SNS";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
          (hsPkgs."amazonka-core" or (errorHandler.buildDepError "amazonka-core"))
          (hsPkgs."amazonka-sns" or (errorHandler.buildDepError "amazonka-sns"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-docs" or (errorHandler.buildDepError "servant-docs"))
          (hsPkgs."servant-lucid" or (errorHandler.buildDepError "servant-lucid"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or (errorHandler.buildDepError "servant-swagger"))
          (hsPkgs."servant-swagger-ui" or (errorHandler.buildDepError "servant-swagger-ui"))
          (hsPkgs."swagger2" or (errorHandler.buildDepError "swagger2"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
      exes = {
        "pinpon" = {
          depends = pkgs.lib.optionals (!!flags.pinpon-executable) [
            (hsPkgs."amazonka" or (errorHandler.buildDepError "amazonka"))
            (hsPkgs."amazonka-sns" or (errorHandler.buildDepError "amazonka-sns"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (errorHandler.buildDepError "optparse-text"))
            (hsPkgs."pinpon" or (errorHandler.buildDepError "pinpon"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = if !flags.pinpon-executable then false else true;
        };
        "pinpon-gpio" = {
          depends = pkgs.lib.optionals (!!flags.pinpon-gpio-executable) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hpio" or (errorHandler.buildDepError "hpio"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (errorHandler.buildDepError "optparse-text"))
            (hsPkgs."pinpon" or (errorHandler.buildDepError "pinpon"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = if !flags.pinpon-gpio-executable then false else true;
        };
        "pinpon-ring" = {
          depends = pkgs.lib.optionals (!!flags.pinpon-ring-executable) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."optparse-text" or (errorHandler.buildDepError "optparse-text"))
            (hsPkgs."pinpon" or (errorHandler.buildDepError "pinpon"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
          buildable = if !flags.pinpon-ring-executable then false else true;
        };
      };
      tests = {
        "doctest" = {
          depends = pkgs.lib.optionals (!!flags.test-doctests) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
          buildable = if !flags.test-doctests then false else true;
        };
        "hlint" = {
          depends = pkgs.lib.optionals (!!flags.test-hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
          buildable = if !flags.test-hlint then false else true;
        };
        "spec" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."pinpon" or (errorHandler.buildDepError "pinpon"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."servant-swagger" or (errorHandler.buildDepError "servant-swagger"))
          ] ++ pkgs.lib.optionals (!!flags.test-hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          ];
          buildable = if !flags.test-hlint then false else true;
        };
      };
    };
  }