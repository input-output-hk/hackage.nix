{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "wumpus-microprint";
        version = "0.12.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Microprints - \"greek-text\" pictures.";
      description = "\nA library to produce /microprints/ [1] sometimes known as\n\\\"greek-text\\\".\n\nA rudimentary tokenizer is provided, but it is largely\nuntested.\n\nVersion 0.9.0 adds some new functionality, but the API is\nundercooked and is unsuitable for real use. The API will improve\nas Wumpus-Basic improves...\n\n\n\\[1\\] <http://scg.unibe.ch/archive/papers/Robb05b-microprintsESUG.pdf>\n\nChangelog:\n\n0.11.0 to 0.12.0:\n\n* Updated to track changes to Wumpus-Basic and Wumpus-Core.\n\n0.10.0 to 0.11.0:\n\n* Updated to track changes in Wumpus-Basic.\n\n0.9.0 to 0.10.0:\n\n* Updated to track changes in Wumpus-Basic.\n\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
          (hsPkgs.wumpus-basic)
        ];
      };
    };
  }