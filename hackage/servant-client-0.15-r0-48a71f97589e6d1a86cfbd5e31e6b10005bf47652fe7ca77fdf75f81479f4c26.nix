{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-client";
        version = "0.15";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2018 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "Automatic derivation of querying functions for servant";
      description = "This library lets you derive automatically Haskell functions that\nlet you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.\n\nSee <http://haskell-servant.readthedocs.org/en/stable/tutorial/Client.html the client section of the tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.servant)
          (hsPkgs.servant-client-core)
          (hsPkgs.base-compat)
          (hsPkgs.http-client)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.kan-extensions)
          (hsPkgs.monad-control)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.http-api-data)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.kan-extensions)
            (hsPkgs.servant-client)
            (hsPkgs.servant-client-core)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.entropy)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.tdigest)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
        "readme" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.http-client)
            (hsPkgs.text)
            (hsPkgs.servant-client)
            (hsPkgs.markdown-unlit)
          ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit)
          ];
        };
      };
    };
  }