{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "conversion-text";
        version = "1.0.0.1";
      };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/conversion-text";
      url = "";
      synopsis = "\"Conversion\" instances for the \"text\" library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "conversion-text" = {
        depends  = [
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.conversion)
          (hsPkgs.conversion-bytestring)
          (hsPkgs.base-prelude)
        ];
      };
    };
  }