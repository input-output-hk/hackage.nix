{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "potoki-hasql";
          version = "1.6";
        };
        license = "MIT";
        copyright = "(c) 2018, Metrix.AI";
        maintainer = "Metrix.AI Ninjas <ninjas@metrix.ai>";
        author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
        homepage = "https://github.com/metrix-ai/potoki-hasql";
        url = "";
        synopsis = "Integration of \"potoki\" and \"hasql\".";
        description = "Utilities, which integrate Hasql and Potoki.";
        buildType = "Simple";
      };
      components = {
        "potoki-hasql" = {
          depends  = [
            hsPkgs.acquire
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hasql
            hsPkgs.potoki-core
            hsPkgs.profunctors
            hsPkgs.text
            hsPkgs.vector
          ];
        };
      };
    }