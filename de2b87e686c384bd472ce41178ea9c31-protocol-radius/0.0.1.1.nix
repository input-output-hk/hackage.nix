{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "protocol-radius";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "";
      url = "";
      synopsis = "parser and printer for radius protocol packet";
      description = "This package provides\nparser and printer for radius protocol packet.";
      buildType = "Simple";
    };
    components = {
      "protocol-radius" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.dlist)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.cereal)
          (hsPkgs.memory)
          (hsPkgs.cryptonite)
        ];
      };
    };
  }