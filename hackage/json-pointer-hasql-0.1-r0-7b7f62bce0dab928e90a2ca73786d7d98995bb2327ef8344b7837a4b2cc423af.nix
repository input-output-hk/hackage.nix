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
        name = "json-pointer-hasql";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Sannsyn AS";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/sannsyn/json-pointer-hasql";
      url = "";
      synopsis = "JSON Pointer extensions for Hasql";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.hasql)
          (hsPkgs.json-pointer)
          (hsPkgs.text)
          (hsPkgs.base-prelude)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.hasql)
            (hsPkgs.json-pointer)
            (hsPkgs.json-pointer-hasql)
            (hsPkgs.either)
            (hsPkgs.transformers)
            (hsPkgs.rebase)
          ];
        };
      };
    };
  }