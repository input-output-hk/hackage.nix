{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "monad-primitive";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "http://bitbucket.org/Shimuuar/monad-primitive";
      url = "";
      synopsis = "Type class for monad transformers stack with pirimitive base monad.";
      description = "Type class for for monad transformers stack with pirimitive base\nmonad and mutable references whic could use either ST or IO monads.";
      buildType = "Simple";
    };
    components = {
      "monad-primitive" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.primitive)
        ];
      };
    };
  }