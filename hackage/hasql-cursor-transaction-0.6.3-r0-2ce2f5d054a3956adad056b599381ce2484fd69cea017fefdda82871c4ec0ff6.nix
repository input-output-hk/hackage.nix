{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hasql-cursor-transaction";
        version = "0.6.3";
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
      "library" = {
        depends = [
          (hsPkgs.hasql)
          (hsPkgs.hasql-transaction)
          (hsPkgs.bytestring-tree-builder)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.contravariant-extras)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
        ];
      };
    };
  }