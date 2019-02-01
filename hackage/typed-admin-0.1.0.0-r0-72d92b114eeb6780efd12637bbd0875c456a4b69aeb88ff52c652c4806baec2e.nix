{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "typed-admin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/typed-admin#readme";
      url = "";
      synopsis = "Admin console framework";
      description = "Please see the README on GitHub at <https://github.com/nakaji-dayo/typed-admin#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HDBC)
          (hsPkgs.HDBC-postgresql)
          (hsPkgs.HDBC-session)
          (hsPkgs.base)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.data-default-class)
          (hsPkgs.exceptions)
          (hsPkgs.generic-lens)
          (hsPkgs.heterocephalus)
          (hsPkgs.http-api-data)
          (hsPkgs.http-types)
          (hsPkgs.lucid)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.persistable-record)
          (hsPkgs.relational-query)
          (hsPkgs.relational-query-HDBC)
          (hsPkgs.relational-record)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.warp)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "typed-admin-exe" = {
          depends = [
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-postgresql)
            (hsPkgs.HDBC-session)
            (hsPkgs.base)
            (hsPkgs.blaze-markup)
            (hsPkgs.bytestring)
            (hsPkgs.data-default-class)
            (hsPkgs.exceptions)
            (hsPkgs.generic-lens)
            (hsPkgs.heterocephalus)
            (hsPkgs.http-api-data)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.lucid)
            (hsPkgs.monad-control)
            (hsPkgs.mtl)
            (hsPkgs.persistable-record)
            (hsPkgs.relational-query)
            (hsPkgs.relational-query-HDBC)
            (hsPkgs.relational-record)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-base)
            (hsPkgs.typed-admin)
            (hsPkgs.unordered-containers)
            (hsPkgs.utf8-string)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.warp)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }