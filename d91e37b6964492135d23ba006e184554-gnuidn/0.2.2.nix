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
      specVersion = "1.8";
      identifier = {
        name = "gnuidn";
        version = "0.2.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "https://john-millikin.com/software/haskell-gnuidn/";
      url = "";
      synopsis = "Bindings for GNU IDN";
      description = "";
      buildType = "Simple";
    };
    components = {
      "gnuidn" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs.idn) ];
        pkgconfig = [
          (pkgconfPkgs.libidn)
        ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "gnuidn_tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chell)
            (hsPkgs.chell-quickcheck)
            (hsPkgs.gnuidn)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
          ];
          libs = [ (pkgs.idn) ];
          pkgconfig = [
            (pkgconfPkgs.libidn)
          ];
          build-tools = [
            (hsPkgs.buildPackages.c2hs)
          ];
        };
      };
    };
  }