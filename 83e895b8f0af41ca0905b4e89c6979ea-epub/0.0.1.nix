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
        name = "epub";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "EPUB E-Book construction support library";
      description = "\nEPUB E-Book Construction support library, for the details look\nat http://en.wikipedia.org/wiki/EPUB.\n";
      buildType = "Simple";
    };
    components = {
      "epub" = {
        depends  = [
          (hsPkgs.ghc)
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.haskell98)
          (hsPkgs.old-time)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.zip-archive)
          (hsPkgs.xml)
          (hsPkgs.Cabal)
        ];
      };
      exes = { "xhtml2epub" = {}; };
    };
  }