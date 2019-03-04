{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "openssh-protocol"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019, HotelKilo";
      maintainer = "mth@smith.st";
      author = "Mark Hibberd";
      homepage = "https://github.com/smith-security/openssh-protocol";
      url = "";
      synopsis = "Haskell implementation of openssh protocol primitives.";
      description = "This is a library collecting openssh protocol primitives\nusing 'cereal'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.integer-logarithms)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cereal)
            (hsPkgs.hedgehog)
            (hsPkgs.openssh-protocol)
            (hsPkgs.time)
            ];
          };
        };
      };
    }