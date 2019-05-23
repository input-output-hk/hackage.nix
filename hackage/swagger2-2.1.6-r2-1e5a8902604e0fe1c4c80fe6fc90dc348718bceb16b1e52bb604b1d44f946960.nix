{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "swagger2"; version = "2.1.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016, GetShopTV";
      maintainer = "nickolay@getshoptv.com";
      author = "Nickolay Kudasov";
      homepage = "https://github.com/GetShopTV/swagger2";
      url = "";
      synopsis = "Swagger 2.0 data model";
      description = "This library is inteded to be used for decoding and encoding Swagger 2.0 API\nspecifications as well as manipulating them.\n\nThe original Swagger 2.0 specification is available at http://swagger.io/specification/.";
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
          (hsPkgs.network)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.generics-sop)
          (hsPkgs.http-media)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.uuid-types)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.10")) (hsPkgs.nats);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.aeson-qq)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.insert-ordered-containers)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.swagger2)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.lens)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }