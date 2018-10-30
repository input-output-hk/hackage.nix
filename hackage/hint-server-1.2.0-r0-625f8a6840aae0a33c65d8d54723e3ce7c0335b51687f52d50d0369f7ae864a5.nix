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
      specVersion = "1.6";
      identifier = {
        name = "hint-server";
        version = "1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "greenmellon@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "";
      url = "http://code.haskell.org/hint-server";
      synopsis = "A server process that runs hint.";
      description = "This library provides a server process (implemented using eprocess) that can receive and run actions in the Interpreter monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.monad-loops)
          (hsPkgs.hint)
          (hsPkgs.hint)
          (hsPkgs.eprocess)
          (hsPkgs.eprocess)
        ];
      };
    };
  }