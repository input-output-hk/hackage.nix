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
        name = "platinum-parsing";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017, Patrick Champion";
      maintainer = "chlablak@gmail.com";
      author = "chlablak";
      homepage = "https://github.com/chlablak/platinum-parsing";
      url = "";
      synopsis = "General Framework for compiler development.";
      description = "Platinum Parsing provides many tools for the development of compiler (including transpiler or interpreter), based on the well-known Dragon Book (2nd edition). This package is in progress, please take a look at the github repository for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.HStringTemplate)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.binary)
        ];
      };
      exes = {
        "pp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.platinum-parsing)
            (hsPkgs.optparse-applicative)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.clock)
            (hsPkgs.fgl)
            (hsPkgs.directory)
            (hsPkgs.binary)
            (hsPkgs.data-hash)
            (hsPkgs.yaml)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "pp-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.platinum-parsing)
            (hsPkgs.hspec)
            (hsPkgs.containers)
            (hsPkgs.vector)
            (hsPkgs.fgl)
          ];
        };
      };
    };
  }