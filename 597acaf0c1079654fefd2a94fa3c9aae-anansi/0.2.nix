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
        name = "anansi";
        version = "0.2";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin";
      homepage = "http://ianen.org/haskell/anansi/";
      url = "";
      synopsis = "Simple literate programming preprocessor";
      description = "";
      buildType = "Simple";
    };
    components = {
      "anansi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      exes = { "anansi" = {}; };
    };
  }