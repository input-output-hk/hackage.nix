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
        name = "elm-export-persistent";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "bill@casarin.me";
      author = "William Casarin";
      homepage = "https://github.com/jb55/elm-export-persistent";
      url = "";
      synopsis = "elm-export persistent entities";
      description = "Ent is a newtype that wraps Persistent Entity's, allowing you to export them\nto Elm types. Specifically, it adds a To/From JSON instance which adds an id\nfield, as well as an ElmType instance that adds an id field constructor.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.elm-export)
          (hsPkgs.persistent)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
        ];
      };
    };
  }