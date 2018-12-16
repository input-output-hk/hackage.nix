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
        name = "rasa-ext-vim";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext for vim bindings";
      description = "Rasa Ext for vim bindings";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.rasa)
          (hsPkgs.rasa-ext-files)
          (hsPkgs.rasa-ext-views)
          (hsPkgs.rasa-ext-cursors)
          (hsPkgs.rasa-ext-status-bar)
          (hsPkgs.text)
          (hsPkgs.yi-rope)
          (hsPkgs.text-lens)
          (hsPkgs.data-default)
          (hsPkgs.lens)
          (hsPkgs.mtl)
        ];
      };
    };
  }