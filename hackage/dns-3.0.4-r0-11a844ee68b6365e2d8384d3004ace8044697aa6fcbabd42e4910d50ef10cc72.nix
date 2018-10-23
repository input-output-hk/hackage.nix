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
        name = "dns";
        version = "3.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "DNS library in Haskell";
      description = "A thread-safe DNS library for both clients and servers written\nin pure Haskell.";
      buildType = "Simple";
    };
    components = {
      "dns" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.auto-update)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.iproute)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.psqueues)
          (hsPkgs.safe)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8") (hsPkgs.semigroups)) ++ pkgs.lib.optional (system.isWindows) (hsPkgs.split);
        libs = pkgs.lib.optional (system.isWindows) (pkgs."iphlpapi");
      };
      tests = {
        "network" = {
          depends  = [
            (hsPkgs.dns)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.network)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.dns)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.iproute)
            (hsPkgs.word8)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }