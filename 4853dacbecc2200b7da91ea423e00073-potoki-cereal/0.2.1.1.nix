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
        name = "potoki-cereal";
        version = "0.2.1.1";
      };
      license = "MIT";
      copyright = "(c) 2017, Metrix.AI";
      maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/metrix-ai/potoki-cereal";
      url = "";
      synopsis = "Streaming serialization";
      description = "";
      buildType = "Simple";
    };
    components = {
      "potoki-cereal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.potoki-core)
          (hsPkgs.text)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.base-prelude)
          (hsPkgs.attoparsec)
          (hsPkgs.acquire)
          (hsPkgs.base-prelude)
          (hsPkgs.text)
        ];
      };
    };
  }