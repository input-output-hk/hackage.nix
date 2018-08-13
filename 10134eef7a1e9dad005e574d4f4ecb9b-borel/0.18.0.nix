{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      network-uri = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "borel";
        version = "0.18.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2014-2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Anchor Engineering <engineering@anchor.com.au>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "https://github.com/anchor/borel-core";
      url = "";
      synopsis = "Metering System for OpenStack metrics provided by Vaultaire.";
      description = "Leverages Ceilometer, Chevalier and Marquise to meter OpenStack data.";
      buildType = "Simple";
    };
    components = {
      "borel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.bimap)
          (hsPkgs.cassava)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.configurator)
          (hsPkgs.errors)
          (hsPkgs.hslogger)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.multiset)
          (hsPkgs.pipes)
          (hsPkgs.pipes-concurrency)
          (hsPkgs.pipes-safe)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.ceilometer-common)
          (hsPkgs.chevalier-common)
          (hsPkgs.marquise)
          (hsPkgs.vaultaire-common)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lens-properties)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.cassava)
            (hsPkgs.attoparsec)
            (hsPkgs.bimap)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.configurator)
            (hsPkgs.errors)
            (hsPkgs.either)
            (hsPkgs.hslogger)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.multiset)
            (hsPkgs.pipes)
            (hsPkgs.pipes-concurrency)
            (hsPkgs.pipes-safe)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.zeromq4-haskell)
            (hsPkgs.ceilometer-common)
            (hsPkgs.chevalier-common)
            (hsPkgs.marquise)
            (hsPkgs.vaultaire-common)
          ] ++ [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ];
        };
      };
    };
  }