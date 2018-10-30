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
        name = "potoki-cereal";
        version = "0.1";
      };
      license = "MIT";
      copyright = "(c) 2017, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/potoki-cereal";
      url = "";
      synopsis = "Streaming serialization";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.potoki-core)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.potoki)
          (hsPkgs.text)
        ];
      };
    };
  }