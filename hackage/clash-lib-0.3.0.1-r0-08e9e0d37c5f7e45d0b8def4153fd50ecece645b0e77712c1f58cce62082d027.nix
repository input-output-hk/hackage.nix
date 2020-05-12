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
      identifier = { name = "clash-lib"; version = "0.3.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © 2012-2014 University of Twente";
      maintainer = "Christiaan Baaij <christiaan.baaij@gmail.com>";
      author = "Christiaan Baaij";
      homepage = "http://christiaanb.github.io/clash2";
      url = "";
      synopsis = "CAES Language for Synchronous Hardware - As a Library";
      description = "CλaSH (pronounced ‘clash’) is a functional hardware description language that\nborrows both its syntax and semantics from the functional programming language\nHaskell. The merits of using a functional language to describe hardware comes\nfrom the fact that combinational circuits can be directly modelled as\nmathematical functions and that functional languages lend themselves very well\nat describing and (de-)composing mathematical functions.\n\nThis package provides:\n\n* The CoreHW internal language: SystemF + Letrec + Case-decomposition\n\n* The normalisation process that brings CoreHW in a normal form that can be\nconverted to a netlist\n\n* VHDL Backend\n\n* Blackbox/Primitive Handling\n\n\nFront-ends (for: parsing, typecheck, etc.) are provided by separate packages:\n\n* <https://github.com/christiaanb/Idris-dev Idris Frontend>\n\n* <https://github.com/christiaanb/clash2 GHC/Haskell Frontend>\n\n\nPrelude library: <http://hackage.haskell.org/package/clash-prelude>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."concurrent-supply" or (errorHandler.buildDepError "concurrent-supply"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unbound" or (errorHandler.buildDepError "unbound"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
          ];
        buildable = true;
        };
      };
    }