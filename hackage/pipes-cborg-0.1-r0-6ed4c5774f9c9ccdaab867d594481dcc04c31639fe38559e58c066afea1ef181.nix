{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "pipes-cborg"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2019";
      maintainer = "renλren.zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/pipes-cborg";
      url = "";
      synopsis = "Encode and decode cborg streams using the pipes and cborg libraries.";
      description = "Encode and decode binary Pipes streams using the @cborg@ library.\n\nSee the @changelog.md@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cborg)
          (hsPkgs.bytestring)
          (hsPkgs.ghc-prim)
          (hsPkgs.pipes)
          (hsPkgs.pipes-parse)
          (hsPkgs.pipes-bytestring)
          (hsPkgs.serialise)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cborg)
            (hsPkgs.bytestring)
            (hsPkgs.pipes)
            (hsPkgs.pipes-bytestring)
            (hsPkgs.pipes-cborg)
            (hsPkgs.serialise)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }