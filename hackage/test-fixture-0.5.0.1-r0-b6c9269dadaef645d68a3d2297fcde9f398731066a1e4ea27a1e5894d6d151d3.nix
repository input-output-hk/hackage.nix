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
        name = "test-fixture";
        version = "0.5.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 CJ Affiliate by Conversant";
      maintainer = "jvargas@cj.com";
      author = "Joe Vargas";
      homepage = "http://github.com/cjdev/test-fixture#readme";
      url = "";
      synopsis = "Test monadic side-effects";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.th-orphans)
        ];
      };
      tests = {
        "test-fixture-test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.test-fixture)
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