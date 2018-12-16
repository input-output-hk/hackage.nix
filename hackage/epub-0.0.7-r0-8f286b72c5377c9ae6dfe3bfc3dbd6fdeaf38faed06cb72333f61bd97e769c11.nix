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
        name = "epub";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "radoslav.dorcik@gmail.com";
      author = "Radoslav Dorcik <radoslav.dorcik@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "EPUB E-Book construction support library";
      description = "\nEPUB E-Book Construction support library, for the details look\nat http://en.wikipedia.org/wiki/EPUB.\nThis library is depreciated, there is much better alterantive:\nhttp://hackage.haskell.org/package/epub-tools\nhttp://hackage.haskell.org/package/epub-metadata\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.old-time)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.zip-archive)
          (hsPkgs.xml)
        ];
      };
      exes = { "xhtml2epub" = {}; };
    };
  }