{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant"; version = "0.16.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://docs.servant.dev/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs";
      description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in the <http://docs.servant.dev/en/stable/tutorial/index.html tutorial>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant/CHANGELOG.md CHANGELOG>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.http-api-data)
          (hsPkgs.singleton-bool)
          (hsPkgs.base-compat)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bifunctors)
          (hsPkgs.case-insensitive)
          (hsPkgs.deepseq)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mmorph)
          (hsPkgs.network-uri)
          (hsPkgs.QuickCheck)
          (hsPkgs.string-conversions)
          (hsPkgs.tagged)
          (hsPkgs.vault)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.http-media)
            (hsPkgs.mtl)
            (hsPkgs.servant)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          build-tools = [ ((hsPkgs.buildPackages).hspec-discover) ];
          };
        "doctests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.doctest)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }