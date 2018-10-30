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
        name = "cqrs-test";
        version = "0.9.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Command-Query Responsibility Segregation Test Support";
      description = "Test Support for CQRS integration components.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.cqrs-types)
          (hsPkgs.pool-conduit)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.hspec)
          (hsPkgs.HUnit)
        ];
      };
    };
  }