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
      specVersion = "1.2";
      identifier = {
        name = "reactor";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Reactor - task parallel reactive programming";
      description = "Reactor - task parallel reactive programming";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.semigroupoids)
          (hsPkgs.bits-atomic)
          (hsPkgs.comonad)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.contravariant)
        ];
      };
    };
  }