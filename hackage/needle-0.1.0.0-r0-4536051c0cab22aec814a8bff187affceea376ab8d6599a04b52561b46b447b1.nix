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
        name = "needle";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "(c) 2014 Josh Kirklin";
      maintainer = "Josh Kirklin <jjvk2@cam.ac.uk>";
      author = "Josh Kirklin";
      homepage = "";
      url = "";
      synopsis = "ASCII-fied arrow notation";
      description = "Needle is a domain specific language for ASCII-fied arrow notation. See \"Control.Arrow.Needle\" for more information and an example.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.parsec)
          (hsPkgs.parsec-extra)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.vector)
        ];
      };
    };
  }