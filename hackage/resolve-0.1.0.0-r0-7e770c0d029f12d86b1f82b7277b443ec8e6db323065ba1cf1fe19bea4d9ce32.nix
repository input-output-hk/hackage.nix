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
        name = "resolve";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "GPL3";
      maintainer = "haskell@riaqn.org";
      author = "Zesen Qian";
      homepage = "https://github.com/riaqn/resolve#readme";
      url = "";
      synopsis = "A name resolusion library";
      description = "Please see README.org";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-binary)
          (hsPkgs.transformers)
          (hsPkgs.bv)
          (hsPkgs.hashmap)
          (hsPkgs.hashable)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.stm-containers)
          (hsPkgs.parsec)
          (hsPkgs.hslogger)
          (hsPkgs.iproute)
        ];
      };
    };
  }