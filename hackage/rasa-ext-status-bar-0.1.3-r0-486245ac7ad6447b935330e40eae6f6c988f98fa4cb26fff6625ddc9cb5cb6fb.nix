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
        name = "rasa-ext-status-bar";
        version = "0.1.3";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext for populating status-bar";
      description = "Rasa Ext for populating status-status-bar";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rasa)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.yi-rope)
        ];
      };
    };
  }