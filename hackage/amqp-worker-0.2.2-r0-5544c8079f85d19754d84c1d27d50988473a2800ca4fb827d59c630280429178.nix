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
        name = "amqp-worker";
        version = "0.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "";
      url = "";
      synopsis = "High level functions for working with message queues";
      description = "High level functions for working with message queues";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.amqp)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.data-default)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.resource-pool)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.amqp)
            (hsPkgs.amqp-worker)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }