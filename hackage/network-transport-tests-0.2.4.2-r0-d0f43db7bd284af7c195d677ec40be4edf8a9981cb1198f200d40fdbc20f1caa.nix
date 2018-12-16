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
      specVersion = "1.8";
      identifier = {
        name = "network-transport-tests";
        version = "0.2.4.2";
      };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "Facundo Domínguez <facundo.dominguez@tweag.io>";
      author = "Edsko de Vries";
      homepage = "http://haskell-distributed.github.com";
      url = "";
      synopsis = "Unit tests for Network.Transport implementations";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.network-transport)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.mtl)
          (hsPkgs.ansi-terminal)
        ];
      };
    };
  }