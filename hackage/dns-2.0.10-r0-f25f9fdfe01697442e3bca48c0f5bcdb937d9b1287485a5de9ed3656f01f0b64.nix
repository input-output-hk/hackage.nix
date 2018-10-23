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
        version = "2.0.10";
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
        depends  = if compiler.isGhc && compiler.version.ge "7"
          then [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.iproute)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.iproute)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
          ];
      };
      tests = {
        "network" = {
          depends  = [
            (hsPkgs.dns)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.hspec)
          ];
        };
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-builder)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.dns)
            (hsPkgs.hspec)
            (hsPkgs.iproute)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.random)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
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