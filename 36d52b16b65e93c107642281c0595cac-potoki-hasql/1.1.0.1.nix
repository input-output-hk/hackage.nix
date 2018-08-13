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
      specVersion = "1.24";
      identifier = {
        name = "potoki-hasql";
        version = "1.1.0.1";
      };
      license = "MIT";
      copyright = "(c) 2018, Metrix.AI";
      maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/potoki-hasql";
      url = "";
      synopsis = "Integration of \"potoki\" and \"hasql\".";
      description = "Utilities, which integrate Hasql and Potoki.";
      buildType = "Simple";
    };
    components = {
      "potoki-hasql" = {
        depends  = [
          (hsPkgs.hasql)
          (hsPkgs.potoki)
          (hsPkgs.potoki-core)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.profunctors)
        ];
      };
    };
  }