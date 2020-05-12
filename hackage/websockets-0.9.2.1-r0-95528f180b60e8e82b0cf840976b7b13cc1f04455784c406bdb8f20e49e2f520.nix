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
      identifier = { name = "websockets"; version = "0.9.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2011 Siniša Biđin\n(c) 2011-2013 Jasper Van der Jeugt\n(c) 2011 Steffen Schuldenzucker\n(c) 2011 Alex Lang";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Siniša Biđin <sinisa@bidin.cc>\nJasper Van der Jeugt <m@jaspervdj.be>\nSteffen Schuldenzucker <steffen.schuldenzucker@googlemail.com>\nAlex Lang <lang@tsurucapital.com>";
      homepage = "http://jaspervdj.be/websockets";
      url = "";
      synopsis = "A sensible and clean way to write WebSocket-capable servers in Haskell.";
      description = "This library allows you to write WebSocket-capable servers.\n\nAn example server:\n<https://github.com/jaspervdj/websockets/blob/master/example/server.lhs>\n\nAn example client:\n<https://github.com/jaspervdj/websockets/blob/master/example/client.hs>\n\nSee also:\n\n* The specification of the WebSocket protocol:\n<http://www.whatwg.org/specs/web-socket-protocol/>\n\n* The JavaScript API for dealing with WebSockets:\n<http://www.w3.org/TR/websockets/>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          ];
        buildable = true;
        };
      tests = {
        "websockets-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
            ];
          buildable = true;
          };
        };
      };
    }