{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bindings-nettle";
        version = "0.4";
      };
      license = "GPL-3.0-only";
      copyright = "2013-2015 Clint Adams";
      maintainer = "clint@debian.org";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/bindings-nettle";
      url = "";
      synopsis = "bindings to nettle crypto library";
      description = "partial bindings to nettle crypto library";
      buildType = "Simple";
    };
    components = {
      "bindings-nettle" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
        ];
        pkgconfig = [
          (pkgconfPkgs.nettle)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "cast5" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bindings-nettle)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            (hsPkgs.quickcheck-io)
          ];
        };
      };
    };
  }