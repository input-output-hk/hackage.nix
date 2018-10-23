{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "servant-docs";
        version = "0.11.2";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Zalora South East Asia Pte Ltd, Servant Contributors";
      maintainer = "haskell-servant-maintainers@googlegroups.com";
      author = "Servant Contributors";
      homepage = "http://haskell-servant.readthedocs.org/";
      url = "";
      synopsis = "generate API docs for your servant webservice";
      description = "Library for generating API docs from a servant API definition.\n\nRunnable example <https://github.com/haskell-servant/servant/blob/master/servant-docs/example/greet.hs here>.\n\n<https://github.com/haskell-servant/servant/blob/master/servant-docs/CHANGELOG.md CHANGELOG>";
      buildType = "Simple";
    };
    components = {
      "servant-docs" = {
        depends  = [
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
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      exes = {
        "greet-docs" = {
          depends  = [
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.lens)
            (hsPkgs.servant)
            (hsPkgs.servant-docs)
            (hsPkgs.string-conversions)
            (hsPkgs.hspec)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }