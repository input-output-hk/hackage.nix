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
      specVersion = "1.10";
      identifier = {
        name = "vector-text";
        version = "1.1";
      };
      license = "Apache-2.0";
      copyright = "Copyright (C) 2018 Luna Team";
      maintainer = "Wojciech Danilo <wojciech.danilo@luna-lang.org>";
      author = "Luna Team";
      homepage = "https://github.com/luna/vector-text";
      url = "";
      synopsis = "Text implementation based on unboxed char vector.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "vector-text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.prologue)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.vector-binary-instances)
        ];
      };
    };
  }