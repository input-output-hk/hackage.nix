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
        name = "cio";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2013, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/cio";
      url = "";
      synopsis = "A monad for concurrent IO on a thread pool";
      description = "Provides a monadic API for efficient concurrency based on a thread pool.\nThe implementation is based on a \"parallel-io\" library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.parallel-io)
          (hsPkgs.monad-stm)
          (hsPkgs.stm)
          (hsPkgs.mtl)
          (hsPkgs.base)
        ];
      };
    };
  }