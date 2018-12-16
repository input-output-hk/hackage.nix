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
        name = "haskoin-bitcoind";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Bitnomial, Inc";
      maintainer = "wraithm@gmail.com";
      author = "Matthew Wraith";
      homepage = "haskoin.com";
      url = "";
      synopsis = "An adapter for haskoin to network-bitcoin";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.haskoin-core)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.network-bitcoin)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }