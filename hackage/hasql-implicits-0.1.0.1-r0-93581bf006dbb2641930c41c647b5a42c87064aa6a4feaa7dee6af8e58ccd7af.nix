{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-implicits"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2019, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/hasql-implicits";
      url = "";
      synopsis = "Implicit definitions for Hasql, such as default codecs for standard types";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.hasql)
          (hsPkgs.network-ip)
          (hsPkgs.ptr)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
          (hsPkgs.vector)
          ];
        };
      };
    }