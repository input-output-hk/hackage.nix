{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-transaction"; version = "0.7.2"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-transaction";
      url = "";
      synopsis = "A composable abstraction over the retryable transactions for Hasql";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-tree-builder)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.hasql)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      tests = {
        "conflicts-test" = {
          depends = [
            (hsPkgs.hasql-transaction)
            (hsPkgs.hasql)
            (hsPkgs.async)
            (hsPkgs.rebase)
            ];
          };
        };
      };
    }