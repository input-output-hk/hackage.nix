{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "strelka"; version = "2.0.5"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/strelka";
      url = "";
      synopsis = "A simple, flexible and composable web-router";
      description = "An HTTP server can be defined as a request parser, which produces a response,\nwhile managing the application state.\nAs simple as that.\nThis library exploits that fact to produce a very simple and flexible API,\nwhich can be executed on top of any specific HTTP-server implementation (e.g., Warp).\n\n[Library Structure]\nThe API is split into a set of DSLs targeted at solving specific problems in isolation,\nthus facilitating a proper separation of concerns.\n\n[Server Bindings]\nCurrently only a binding to WAI and Warp is known:\n<http://hackage.haskell.org/package/strelka-wai>.\n\n[Demo]\nFor a thorough demonstration of the library and suggested usage patterns\ncheck out the following project:\n<https://github.com/nikita-volkov/strelka-demo>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-data)
          (hsPkgs.base)
          (hsPkgs.base-prelude)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-tree-builder)
          (hsPkgs.hashable)
          (hsPkgs.http-media)
          (hsPkgs.mtl)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.strelka-core)
          (hsPkgs.text)
          (hsPkgs.text-builder)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.url-decoders)
          (hsPkgs.uuid)
          ];
        };
      };
    }