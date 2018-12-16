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
        name = "strelka-core";
        version = "0.3.0.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/strelka-core";
      url = "";
      synopsis = "Core components of \"strelka\"";
      description = "This library is only intended for the internal usage\nby the \\\"strelka\\\" ecosystem.\nIt exposes the components,\nwhich may be needed by both the \\\"strelka\\\" library and\nthe server drivers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.bifunctors)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }