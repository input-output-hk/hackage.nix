{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-server"; version = "0.16.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://docs.servant.dev/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>";
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
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
          (hsPkgs.servant)
          (hsPkgs.http-api-data)
          (hsPkgs.base-compat)
          (hsPkgs.base64-bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.monad-control)
          (hsPkgs.network)
          (hsPkgs.string-conversions)
          (hsPkgs.resourcet)
          (hsPkgs.tagged)
          (hsPkgs.transformers-base)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.word8)
          ];
        };
      exes = {
        "greet" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.wai)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.wai)
            (hsPkgs.aeson)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.QuickCheck)
            (hsPkgs.should-not-typecheck)
            (hsPkgs.temporary)
            (hsPkgs.wai-extra)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        "doctests" = {
          depends = [ (hsPkgs.base) (hsPkgs.servant-server) (hsPkgs.doctest) ];
          };
        };
      };
    }