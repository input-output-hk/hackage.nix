{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { demo = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hssh";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Lars Petersen";
      maintainer = "info@lars-petersen.net";
      author = "Lars Petersen";
      homepage = "https://github.com/lpeterse/haskell-ssh#readme";
      url = "";
      synopsis = "SSH protocol implementation";
      description = "Please see the README on Github at <https://github.com/lpeterse/haskell-ssh#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.memory)
          (hsPkgs.stm)
        ];
      };
      exes = {
        "hssh-demo" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.hssh)
            (hsPkgs.memory)
            (hsPkgs.socket)
            (hsPkgs.stm)
          ];
        };
      };
      tests = {
        "hssh-test" = {
          depends  = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.hssh)
            (hsPkgs.memory)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }