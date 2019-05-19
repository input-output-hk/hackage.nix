{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-http-streams"; version = "0.16"; };
      license = "BSD-3-Clause";
      copyright = "2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://docs.servant.dev/";
      url = "";
      synopsis = "Automatic derivation of querying functions for servant";
      description = "This library lets you derive automatically Haskell functions that\nlet you query each endpoint of a <http://hackage.haskell.org/package/servant servant> webservice.\n\nSee <http://docs.servant.dev/en/stable/tutorial/Client.html the client section of the tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-client/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.servant)
          (hsPkgs.servant-client-core)
          (hsPkgs.base-compat)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-streams)
          (hsPkgs.http-media)
          (hsPkgs.io-streams)
          (hsPkgs.http-types)
          (hsPkgs.http-common)
          (hsPkgs.exceptions)
          (hsPkgs.kan-extensions)
          (hsPkgs.monad-control)
          (hsPkgs.semigroupoids)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs.bifunctors);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.http-api-data)
            (hsPkgs.http-streams)
            (hsPkgs.deepseq)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.kan-extensions)
            (hsPkgs.servant-http-streams)
            (hsPkgs.servant-client-core)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.entropy)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.network)
            (hsPkgs.QuickCheck)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.tdigest)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "readme" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.http-streams)
            (hsPkgs.text)
            (hsPkgs.servant-http-streams)
            (hsPkgs.markdown-unlit)
            ];
          build-tools = [
            (hsPkgs.buildPackages.markdown-unlit or (pkgs.buildPackages.markdown-unlit))
            ];
          };
        };
      };
    }