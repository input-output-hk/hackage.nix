{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-server";
        version = "0.13.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://haskell-servant.readthedocs.org/en/stable/tutorial/index.html tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/example/greet.hs Here>\nis a runnable example, with comments, that defines a dummy API and implements\na webserver that serves this API, using this package.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-server/CHANGELOG.md CHANGELOG>";
      buildType = "Custom";
    };
    components = {
      "servant-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
          (hsPkgs.servant)
          (hsPkgs.aeson)
          (hsPkgs.base-compat)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.http-api-data)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.network-uri)
          (hsPkgs.monad-control)
          (hsPkgs.network)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.string-conversions)
          (hsPkgs.system-filepath)
          (hsPkgs.resourcet)
          (hsPkgs.tagged)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers-compat)
          (hsPkgs.wai)
          (hsPkgs.wai-app-static)
          (hsPkgs.warp)
          (hsPkgs.word8)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      exes = {
        "greet" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.aeson)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.should-not-typecheck)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.wai-extra)
            (hsPkgs.temporary)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant-server)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }