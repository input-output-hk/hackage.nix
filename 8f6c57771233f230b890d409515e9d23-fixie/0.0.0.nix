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
        name = "fixie";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 CJ Affiliate by Conversant, 2016 Joe Vargas";
      maintainer = "joevargas92@gmail.com";
      author = "Joe Vargas";
      homepage = "http://github.com/jxv/fixie#readme";
      url = "";
      synopsis = "Opininated testing framework for mtl style (spies, stubs, and mocks)";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "fixie" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
          (hsPkgs.either)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-orphans)
        ];
      };
      tests = {
        "fixie-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fixie)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }