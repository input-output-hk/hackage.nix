{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-docs"; version = "0.11.3"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, 2016-2019 Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://docs.servant.dev/";
      url = "";
      synopsis = "generate API docs for your servant webservice";
      description = "Library for generating API docs from a servant API definition.\n\nRunnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.servant)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base-compat)
          (hsPkgs.case-insensitive)
          (hsPkgs.control-monad-omega)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.string-conversions)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "greet-docs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-docs)
            (hsPkgs.string-conversions)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.aeson)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-docs)
            (hsPkgs.string-conversions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }