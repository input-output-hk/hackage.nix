{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "caster"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Akihito KIRISAKI";
      maintainer = "kirisaki@klaraworks.net";
      author = "Akihito KIRISAKI";
      homepage = "https://github.com/kirisaki/caster#readme";
      url = "";
      synopsis = "Multicast, thread-safe, and fast logger.";
      description = "Please see the README on GitHub at <https://github.com/kirisaki/caster#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.fast-builder)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.unix-time)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.caster)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.text)
            (hsPkgs.fast-builder)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }