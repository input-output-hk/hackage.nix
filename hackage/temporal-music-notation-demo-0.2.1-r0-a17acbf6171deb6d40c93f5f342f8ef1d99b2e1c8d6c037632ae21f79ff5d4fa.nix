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
      specVersion = "1.6";
      identifier = {
        name = "temporal-music-notation-demo";
        version = "0.2.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "generates midi from score notation.";
      description = "Library for playing scores made with 'temporal-music-notation'\nvia midi. It binds 'temporal-media-notation' and 'HCodecs'\npackages. Features composable score representation and\nmicrosound composition. It relies on\nMidi Tuning Standart (MTS) so it's better to listen results\nwith TiMidity or another soft that undestands MTS.\nExamples can be found source directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."temporal-music-notation" or (errorHandler.buildDepError "temporal-music-notation"))
          (hsPkgs."HCodecs" or (errorHandler.buildDepError "HCodecs"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }