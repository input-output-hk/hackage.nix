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
      specVersion = "2.2";
      identifier = { name = "character-ps"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/character-ps";
      url = "";
      synopsis = "Pattern synonyms for ASCII characters for Word8, Word16 etc";
      description = "Pattern synonyms for ASCII characters, e.g.\n\n@\npattern SPACE :: Word8\npattern SPACE = 0x20\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "character-ps-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."character-ps" or (errorHandler.buildDepError "character-ps"))
          ];
          buildable = true;
        };
      };
    };
  }