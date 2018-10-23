{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "amqp-conduit";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "Copyright (c) 2015, Toru Tomita";
      maintainer = "toru.tomita@gmail.com";
      author = "Toru Tomita";
      homepage = "http://github.com/tatac1/amqp-conduit/";
      url = "";
      synopsis = "Conduit bindings for AMQP (see amqp package)";
      description = "Conduit bindings for AMQP (see amqp package)";
      buildType = "Simple";
    };
    components = {
      "amqp-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.amqp)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.lifted-base)
          (hsPkgs.exceptions)
          (hsPkgs.transformers-base)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-amqp-conduit" = {
          depends  = [
            (hsPkgs.amqp-conduit)
            (hsPkgs.base)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.bytestring)
            (hsPkgs.amqp)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }