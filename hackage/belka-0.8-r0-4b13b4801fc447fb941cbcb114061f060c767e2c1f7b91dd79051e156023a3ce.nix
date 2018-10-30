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
        name = "belka";
        version = "0.8";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/belka";
      url = "";
      synopsis = "HTTP client DSL";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base64-bytestring)
          (hsPkgs.json-bytes-builder)
          (hsPkgs.potoki)
          (hsPkgs.potoki-core)
          (hsPkgs.aeson-value-parser)
          (hsPkgs.attoparsec)
          (hsPkgs.http-media)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.vector)
          (hsPkgs.iri)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.case-insensitive)
          (hsPkgs.ptr)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.bug)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.belka)
            (hsPkgs.iri)
            (hsPkgs.potoki)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.QuickCheck)
            (hsPkgs.bug)
            (hsPkgs.rerebase)
          ];
        };
      };
    };
  }