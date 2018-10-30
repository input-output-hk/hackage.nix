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
        name = "json-pointer-aeson";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/json-pointer-aeson";
      url = "";
      synopsis = "Integration layer for \"json-pointer\" and \"aeson\"";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.json-pointer)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }