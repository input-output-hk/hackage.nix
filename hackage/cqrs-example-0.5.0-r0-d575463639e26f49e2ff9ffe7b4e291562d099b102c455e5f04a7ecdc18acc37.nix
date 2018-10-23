{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0.1";
      identifier = {
        name = "cqrs-example";
        version = "0.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "spam@scientician.net";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Example for cqrs package";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cqrs-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cqrs)
            (hsPkgs.data-default)
            (hsPkgs.enumerator)
            (hsPkgs.text)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }