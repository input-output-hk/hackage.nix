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
      identifier = { name = "kanji"; version = "3.0.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "https://github.com/fosskers/nanq";
      url = "";
      synopsis = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.";
      description = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }