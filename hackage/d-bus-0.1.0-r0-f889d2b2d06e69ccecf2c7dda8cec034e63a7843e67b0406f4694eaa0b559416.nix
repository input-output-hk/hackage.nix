{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "d-bus"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2013 Philipp Balzarek";
      maintainer = "p.balzarek@googlemail.com";
      author = "Philipp Balzarek";
      homepage = "";
      url = "";
      synopsis = "Permissively licensed D-Bus client library";
      description = "This library uses modern extensions to the Haskell type system\n(including GADTs, DataKinds and TypeFamilies) and the\nsingletons library to embedd the D-Bus type system. D-Bus\nsignatures can thus be inferred.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.binary)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.data-default)
          (hsPkgs.free)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.singletons)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-picklers)
          (hsPkgs.xml-types)
          (hsPkgs.hslogger)
          (hsPkgs.exceptions)
          ];
        };
      tests = {
        "unittests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.d-bus)
            (hsPkgs.xml-hamlet)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.tasty)
            (hsPkgs.tasty-th)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.singletons)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            ];
          };
        "integrationtest" = {
          depends = [ (hsPkgs.base) (hsPkgs.d-bus) (hsPkgs.text) ];
          };
        };
      };
    }