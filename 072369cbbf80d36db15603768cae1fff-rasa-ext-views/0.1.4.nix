{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rasa-ext-views";
        version = "0.1.4";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Chris Penner";
      maintainer = "christopher.penner@gmail.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/rasa/";
      url = "";
      synopsis = "Rasa Ext managing rendering views";
      description = "Rasa Ext managing rendering views";
      buildType = "Simple";
    };
    components = {
      "rasa-ext-views" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.rasa)
          (hsPkgs.lens)
          (hsPkgs.data-default)
          (hsPkgs.bifunctors)
          (hsPkgs.recursion-schemes)
          (hsPkgs.mtl)
          (hsPkgs.yi-rope)
        ];
      };
    };
  }