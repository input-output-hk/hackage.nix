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
        name = "colchis";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz Carrete";
      homepage = "";
      url = "";
      synopsis = "Rudimentary JSON-RPC 2.0 client over raw TCP.";
      description = "Rudimentary JSON-RPC 2.0 client over raw TCP.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.pipes)
          (hsPkgs.pipes-attoparsec)
          (hsPkgs.pipes-aeson)
          (hsPkgs.pipes-network)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.conceit)
          (hsPkgs.network)
        ];
      };
    };
  }