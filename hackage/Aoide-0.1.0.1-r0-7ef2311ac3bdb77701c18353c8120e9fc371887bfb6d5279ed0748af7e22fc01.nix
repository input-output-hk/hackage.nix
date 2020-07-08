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
      identifier = { name = "Aoide"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liisikerik@hotmail.com";
      author = "Liisi Kerik";
      homepage = "https://github.com/liisikerik/aoide";
      url = "";
      synopsis = "A simple music library with the capability of generating .ly and .mid files.";
      description = "This library provides data structures for describing music and generates Lilypond and MIDI files. In addition, it contains a\nmodule with some music-theoretical functions that may be useful in computer-assisted composition. The library is focused on\nthe very basics of standard Western musical notation and does not support dynamic indications, articulation marks, double\naccidentals, tempo changes, polyrhythms, time signature changes and microtonality. Tuplets are supported in MIDI scores but\nnot in Lilypond scores. Some features, like key changes and polytonality, can be used but not properly notated.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }