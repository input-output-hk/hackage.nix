{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "dns"; version = "4.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "DNS library in Haskell";
      description = "A thread-safe DNS library for both clients and servers written\nin pure Haskell.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.cabal-doctest or (pkgs.buildPackages.cabal-doctest))
        ];
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.auto-update)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.hourglass)
          (hsPkgs.iproute)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.psqueues)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8") (hsPkgs.semigroups)) ++ (pkgs.lib).optional (system.isWindows) (hsPkgs.split);
        libs = (pkgs.lib).optional (system.isWindows) (pkgs."iphlpapi");
        };
      tests = {
        "network" = {
          depends = [
            (hsPkgs.dns)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.network)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.dns)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.iproute)
            (hsPkgs.word8)
            ];
          };
        "doctests" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        };
      };
    }