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
        name = "json-bytes-builder";
        version = "0.5.2";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/json-bytes-builder";
      url = "";
      synopsis = "Direct-to-bytes JSON Builder";
      description = "An API for encoding of arbitrary data-structures into JSON byte-arrays,\nwhich is faster and simpler than \\\"aeson\\\".\n\nCheck out\n<http://hackage.haskell.org/package/json-bytes-builder-0.5/src/demo/Main.hs the demo>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.semigroups)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
      tests = {
        "demo" = {
          depends  = [
            (hsPkgs.json-bytes-builder)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.base-prelude)
          ];
        };
      };
      benchmarks = {
        "benchmark" = {
          depends  = [
            (hsPkgs.json-bytes-builder)
            (hsPkgs.criterion)
            (hsPkgs.aeson)
            (hsPkgs.rebase)
          ];
        };
      };
    };
  }