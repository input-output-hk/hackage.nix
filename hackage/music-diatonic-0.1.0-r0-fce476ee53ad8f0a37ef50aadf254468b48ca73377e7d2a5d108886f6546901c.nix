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
      specVersion = "1.2";
      identifier = { name = "music-diatonic"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patl@cpan.org";
      author = "Patrick LeBoutillier";
      homepage = "";
      url = "";
      synopsis = "Implementation of basic western musical theory objects.";
      description = "music-diatonic provides an implementation of basic western musical theory objects.\nIncludes notes, scales, chords, degrees and harmonies.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        buildable = true;
      };
    };
  }