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
        name = "json-tracer";
        version = "0.0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Taku Terao";
      maintainer = "autotaker@gmail.com";
      author = "Taku Terao";
      homepage = "https://github.com/autotaker/json-tracer#readme";
      url = "";
      synopsis = "A polymorphic, type-safe, json-structured tracing library";
      description = "\nA polymorphic, type-safe, structured tracing library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.ghc-prim)
          (hsPkgs.microlens)
          (hsPkgs.microlens-ghc)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "unit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.json-tracer)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-discover)
            (hsPkgs.microlens)
          ];
        };
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.json-tracer)
            (hsPkgs.microlens)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }