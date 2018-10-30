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
        name = "salvia-extras";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Collection of non-fundamental handlers for the Salvia web server.";
      description = "Collection of non-fundamental handlers for the Salvia web server.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clevercss)
          (hsPkgs.bytestring)
          (hsPkgs.salvia)
          (hsPkgs.salvia-protocol)
          (hsPkgs.transformers)
          (hsPkgs.fclabels)
          (hsPkgs.hscolour)
          (hsPkgs.text)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.filestore)
          (hsPkgs.network)
          (hsPkgs.monads-fd)
          (hsPkgs.stm)
          (hsPkgs.HStringTemplate)
          (hsPkgs.sendfile)
          (hsPkgs.utf8-string)
          (hsPkgs.c10k)
          (hsPkgs.pureMD5)
          (hsPkgs.split)
          (hsPkgs.threadmanager)
        ];
      };
    };
  }