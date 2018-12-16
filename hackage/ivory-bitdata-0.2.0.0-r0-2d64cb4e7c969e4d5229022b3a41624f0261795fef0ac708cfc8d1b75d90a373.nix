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
        name = "ivory-bitdata";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Galois, Inc.";
      maintainer = "jamesjb@galois.com";
      author = "Galois, Inc.";
      homepage = "http://smaccmpilot.org/languages/ivory-introduction.html";
      url = "";
      synopsis = "Ivory bit-data support.";
      description = "See the paper http://yav.github.io/publications/bitdata.pdf";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ivory)
          (hsPkgs.ivory-backend-c)
          (hsPkgs.monadLib)
          (hsPkgs.template-haskell)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "ivory-bitdata-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ivory-bitdata)
            (hsPkgs.ivory)
            (hsPkgs.ivory-backend-c)
          ];
        };
      };
    };
  }