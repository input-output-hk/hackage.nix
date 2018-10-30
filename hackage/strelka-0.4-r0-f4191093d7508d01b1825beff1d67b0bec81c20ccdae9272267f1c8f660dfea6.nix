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
        name = "strelka";
        version = "0.4";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/strelka";
      url = "";
      synopsis = "Extremely flexible and composable router";
      description = "An HTTP server can be defined as a request parser, which produces a response.\nAs simple as that.\nThis library exploits that fact to produce a very simple API,\nwhich can then be used on top of any server implementation.\n\n[Warning]\nThis library is currently in active development.\nThe API can change rapidly.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base64-bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.http-media)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.bifunctors)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }