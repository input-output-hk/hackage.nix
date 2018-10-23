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
        name = "monad-journal";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      author = "Dimitri Sabadie <dimitri.sabadie@gmail.com>";
      homepage = "http://github.com/phaazon/monad-journal";
      url = "";
      synopsis = "Pure logger typeclass and monad transformer";
      description = "This package provides a typeclass for logging in\npure code, or more generally, in any kind of\ncontext. You can do whatever you want with\nlogs, especially get them, clear them or even\nsink them through 'IO' if you're logging in\n@(MonadIO m) => m@.";
      buildType = "Simple";
    };
    components = {
      "monad-journal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.either)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
        ];
      };
    };
  }