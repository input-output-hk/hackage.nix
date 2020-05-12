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
      identifier = { name = "twentefp-websockets"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2011 Siniša Biđin\n(c) 2011-2013 Jasper Van der Jeugt\n(c) 2011 Steffen Schuldenzucker\n(c) 2011 Alex Lang";
      maintainer = "Sebastiaan la Fleur <sebastiaan.la.fleur@gmail.com>";
      author = "Siniša Biđin <sinisa@bidin.cc>\nJasper Van der Jeugt <m@jaspervdj.be>\nSteffen Schuldenzucker <steffen.schuldenzucker@googlemail.com>\nAlex Lang <lang@tsurucapital.com>\nSebastiaan la Fleur <sebastiaan.la.fleur@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A fork of the popular websockets package. It is used for the practical assignments of the University of Twente. A sensible and clean way to write WebSocket-capable servers in Haskell.";
      description = "A fork of the popular websockets package. It is used for the practical assignments of the University of Twente.";
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
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
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
    }