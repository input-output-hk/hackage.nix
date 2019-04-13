{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "amqp-worker"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "Orbital Labs";
      maintainer = "seanhess@gmail.com";
      author = "Sean Hess";
      homepage = "https://github.com/seanhess/amqp-worker#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/seanhess/server#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.amqp)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.resource-pool)
          (hsPkgs.split)
          (hsPkgs.text)
          (hsPkgs.transformers-base)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.amqp)
            (hsPkgs.amqp-worker)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.monad-control)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.resource-pool)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers-base)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.amqp)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.monad-control)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.resource-pool)
            (hsPkgs.server)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.transformers-base)
            ];
          };
        };
      };
    }