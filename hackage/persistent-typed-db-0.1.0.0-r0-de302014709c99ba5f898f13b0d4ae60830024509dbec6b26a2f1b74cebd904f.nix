{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "persistent-typed-db"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/persistent-typed-db#readme";
      url = "";
      synopsis = "Type safe access to multiple database schemata.";
      description = "See README.md for more details, examples, and fun.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.http-api-data)
          (hsPkgs.monad-logger)
          (hsPkgs.path-pieces)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.resource-pool)
          (hsPkgs.resourcet)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "specs" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.esqueleto)
            (hsPkgs.hspec)
            (hsPkgs.http-api-data)
            (hsPkgs.monad-logger)
            (hsPkgs.path-pieces)
            (hsPkgs.persistent)
            (hsPkgs.persistent-template)
            (hsPkgs.persistent-typed-db)
            (hsPkgs.resource-pool)
            (hsPkgs.resourcet)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }