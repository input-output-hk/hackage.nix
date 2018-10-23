{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "CLASE";
        version = "2009.2.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "clase@zonetora.co.uk";
      author = "Tristan Allwood";
      homepage = "http://www.zonetora.co.uk/clase/";
      url = "";
      synopsis = "Cursor Library for A Structured Editor";
      description = "A library to aid the development of structured editors that\nrequire a zipper-like interface to the language being edited.";
      buildType = "Simple";
    };
    components = {
      "CLASE" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
    };
  }