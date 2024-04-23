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
    flags = { remote-configs = true; old-transformers = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "configuration-tools"; version = "0.3.0"; };
      license = "MIT";
      copyright = "(c) 2015-2017 Lars Kuhtz <lakuhtz@gmail.com>,\n(c) 2014-2015 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz <lakuhtz@gmail.com>";
      homepage = "https://github.com/alephcloud/hs-configuration-tools";
      url = "";
      synopsis = "Tools for specifying and parsing configurations";
      description = "Tools for specifying and parsing configurations\n\nThis package provides a collection of utils on top of the packages\n<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,\n<http://hackage.haskell.org/package/aeson aeson>, and\n<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and\napplications in a convenient and composable way.\n\nThe main features are\n\n1. configuration management through integration of command line option\nparsing and configuration files and\n\n2. a @Setup.hs@ file that generates a @PkgInfo@ module for each component\nof a package that provides information about the package and the build.\n\nDocumentation on how to use this package can be found in the\n<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>\nand in the API documentation of the modules \"Configuration.Utils\" and\n\"Configuration.Utils.Setup\".";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
        ] ++ (if flags.old-transformers
          then [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
          ]
          else [
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ])) ++ pkgs.lib.optionals (flags.remote-configs) [
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."connection" or (errorHandler.buildDepError "connection"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-system" or (errorHandler.buildDepError "x509-system"))
          (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
        ];
        buildable = true;
      };
      tests = {
        "url-example-test" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."configuration-tools" or (errorHandler.buildDepError "configuration-tools"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ] ++ (if flags.old-transformers
            then [
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]
            else [
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ])) ++ pkgs.lib.optionals (flags.remote-configs) [
            (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
          ];
          buildable = true;
        };
        "trivial" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."configuration-tools" or (errorHandler.buildDepError "configuration-tools"))
          ];
          buildable = true;
        };
      };
    };
  }