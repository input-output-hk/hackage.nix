{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "newtype-deriving"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2014, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/newtype-deriving";
      url = "";
      synopsis = "Instance derivers for newtype wrappers";
      description = "Template Haskell based derivers for typical newtype instances,\nwhich the @GeneralizedNewtypeDeriving@ extension refuses to handle.\n\nAmongst others provides support for the \\\"monad-control\\\" classes:\n\n* @Control.Monad.Trans.Control.'Control.Monad.Trans.Control.MonadTransControl'@\n\n* @Control.Monad.Trans.Control.'Control.Monad.Trans.Control.MonadBaseControl'@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.template-haskell)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.transformers)
          (hsPkgs.base-prelude)
          (hsPkgs.base)
          ];
        };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs.newtype-deriving)
            (hsPkgs.either)
            (hsPkgs.monad-control)
            (hsPkgs.transformers-base)
            (hsPkgs.transformers)
            (hsPkgs.base-prelude)
            (hsPkgs.base)
            ];
          };
        };
      };
    }