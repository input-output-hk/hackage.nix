{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unix-time"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "Unix time parser/formatter and utilities";
      description = "Fast parser\\/formatter\\/utilities for Unix time";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.old-time)
          (hsPkgs.binary)
          ];
        };
      tests = {
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.doctest) (hsPkgs.unix-time) ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.QuickCheck)
            (hsPkgs.time)
            (hsPkgs.unix-time)
            ];
          };
        };
      };
    }