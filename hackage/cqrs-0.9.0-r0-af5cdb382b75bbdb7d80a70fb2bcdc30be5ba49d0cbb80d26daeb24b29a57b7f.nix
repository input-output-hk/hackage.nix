{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cqrs";
        version = "0.9.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Command-Query Responsibility Segregation";
      description = "Haskell implementation of the CQRS architectural pattern.";
      buildType = "Simple";
    };
    components = {
      "cqrs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.cqrs-types)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.pool-conduit)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.stm)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "cqrs-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.pool-conduit)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            (hsPkgs.cqrs)
            (hsPkgs.cqrs-test)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }