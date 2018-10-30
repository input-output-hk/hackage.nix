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
      specVersion = "1.10";
      identifier = {
        name = "rasa-ext-slate";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa extension for rendering to terminal with vty";
      description = "Rasa extension for rendering to terminal with vty";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rasa)
          (hsPkgs.rasa-ext-style)
          (hsPkgs.rasa-ext-status-bar)
          (hsPkgs.text)
          (hsPkgs.yi-rope)
          (hsPkgs.lens)
          (hsPkgs.vty)
          (hsPkgs.rasa-ext-logger)
        ];
      };
    };
  }