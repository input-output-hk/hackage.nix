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
        name = "multiaddr";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Micxjo Funkcio";
      maintainer = "Micxjo Funkcio <micxjo@fastmail.com>";
      author = "Micxjo Funkcio <micxjo@fastmail.com>";
      homepage = "http://github.com/micxjo/hs-multiaddr";
      url = "";
      synopsis = "A network address format";
      description = "Multiaddr is a self-describing network address format\nsupporting a variety of protocols, with both string\nand binary representations.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.hashable)
          (hsPkgs.errors)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.base58-bytestring)
        ];
      };
      tests = {
        "multiaddr-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.multiaddr)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }