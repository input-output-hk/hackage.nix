{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "list-t-attoparsec"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/list-t-attoparsec";
      url = "";
      synopsis = "An \"attoparsec\" adapter for \"list-t\"";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.list-t)
          (hsPkgs.exceptions)
          (hsPkgs.mtl-prelude)
          (hsPkgs.base-prelude)
          ];
        };
      };
    }