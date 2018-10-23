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
        name = "hasql-cursor-transaction";
        version = "0.6.3.1";
      };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-cursor-transaction";
      url = "";
      synopsis = "An abstraction for simultaneous fetching from multiple PostgreSQL cursors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hasql-cursor-transaction" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-tree-builder)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.hasql)
          (hsPkgs.hasql-transaction)
          (hsPkgs.transformers)
        ];
      };
    };
  }