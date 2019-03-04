{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "network-ip"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2011-2013 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/network-ip";
      url = "";
      synopsis = "Internet Protocol data structures";
      description = "This package provides Internet Protocol data structures";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.data-endian)
          (hsPkgs.data-dword)
          (hsPkgs.tagged)
          (hsPkgs.hashable)
          (hsPkgs.binary)
          (hsPkgs.cereal)
          (hsPkgs.text-printer)
          (hsPkgs.data-textual)
          (hsPkgs.parsers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.data-dword)
            (hsPkgs.text-printer)
            (hsPkgs.data-textual)
            (hsPkgs.parsers)
            (hsPkgs.network-ip)
            ];
          };
        };
      };
    }