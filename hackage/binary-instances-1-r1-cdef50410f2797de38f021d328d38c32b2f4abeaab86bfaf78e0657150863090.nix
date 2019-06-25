{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "binary-instances"; version = "1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/binary-orphans#readme";
      url = "";
      synopsis = "Orphan instances for binary";
      description = "`binary-orphans` defines orphan instances for types in some popular packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.binary-orphans)
          (hsPkgs.case-insensitive)
          (hsPkgs.hashable)
          (hsPkgs.scientific)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.time-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
          ];
        };
      tests = {
        "binary-instances-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.binary-instances)
            (hsPkgs.case-insensitive)
            (hsPkgs.hashable)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.scientific)
            (hsPkgs.tagged)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }