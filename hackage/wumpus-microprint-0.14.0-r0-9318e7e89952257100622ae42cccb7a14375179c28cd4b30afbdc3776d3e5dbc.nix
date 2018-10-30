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
        version = "0.14.0";
      };
      license = "BSD-3-Clause";
      copyright = "Stephen Tetley <stephen.tetley@gmail.com>";
      maintainer = "Stephen Tetley <stephen.tetley@gmail.com>";
      author = "";
      homepage = "http://code.google.com/p/copperbox/";
      url = "";
      synopsis = "Microprints - \"greek-text\" pictures.";
      description = "\nA library to produce /microprints/ [1] sometimes known as\n\\\"greek-text\\\".\n\nA rudimentary tokenizer is provided, but it is largely\nuntested.\n\n\\*\\* WARNING \\*\\* - in future, this library might not be updated\nto track revisions to Wumpus-Basic and Wumpus-Drawing.\nOriginally microprints seemed like a simple subject to use as a\ntestbed for developing Wumpus, however in practice the\nMicroprint library has not been valuable for this. To do the\nsubject justice, more effort has to be spent on tokenizing\n(which does not contribute to advancing Wumpus) than drawing.\nEventually I intend to polish this library, but I do not expect\nto do this soon.\n\n\\[1\\] <http://scg.unibe.ch/archive/papers/Robb05b-microprintsESUG.pdf>\n\nChangelog:\n\nv0.13.0 to v0.14.0:\n\n* Updated to track changes to Wumpus-Basic and Wumpus-Drawing.\n\n* Removed the shim module @Wumpus.Microprint@ this was\nprioritizing the Teletype drawing style, however this style\nis now out-of-date and it may be dropped in future revisions\nrather than revised.\n\nv0.12.0 to v0.13.0:\n\n* Updated to track changes to Wumpus-Basic and Wumpus-Core.\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector-space)
          (hsPkgs.wumpus-core)
          (hsPkgs.wumpus-basic)
          (hsPkgs.wumpus-drawing)
        ];
      };
    };
  }