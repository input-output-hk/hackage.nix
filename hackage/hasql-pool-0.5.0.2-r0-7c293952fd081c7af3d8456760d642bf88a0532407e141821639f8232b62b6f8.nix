{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-pool"; version = "0.5.0.2"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-pool";
      url = "";
      synopsis = "A pool of connections for Hasql";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.resource-pool)
          (hsPkgs.hasql)
          (hsPkgs.time)
          (hsPkgs.base-prelude)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base-prelude)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }