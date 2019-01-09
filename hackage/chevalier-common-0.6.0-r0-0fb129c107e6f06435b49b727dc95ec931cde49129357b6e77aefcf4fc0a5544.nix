{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "chevalier-common"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2014-2015 Anchor Systems, Pty Ltd and Others";
      maintainer = "Anchor Engineering <engineering@anchor.com.au>";
      author = "Anchor Engineering <engineering@anchor.com.au>";
      homepage = "";
      url = "";
      synopsis = "Query interface for Chevalier";
      description = "Provides common types and a ZeroMQ query interface for Chevalier.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.protobuf)
          (hsPkgs.text)
          (hsPkgs.locators)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.unordered-containers)
          (hsPkgs.mtl)
          (hsPkgs.zeromq4-haskell)
          (hsPkgs.vaultaire-common)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        };
      };
    }