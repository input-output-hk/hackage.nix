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
    flags = { no-pgn = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "chesshs"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "arno@vanlumig.com";
      author = "Arno van Lumig";
      homepage = "http://arnovanlumig.com/chesshs.html";
      url = "";
      synopsis = "Simple library for validating chess moves and parsing PGN files";
      description = "With this library you can load chess boards from FEN and PGN notation and apply moves to the boards. Moves will only be allowed if they are valid under the normal chess rules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ (pkgs.lib).optional (!flags.no-pgn) (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"));
        buildable = true;
        };
      };
    }