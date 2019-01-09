{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "salvia-protocol"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sfvisser@cs.uu.nl";
      author = "Sebastiaan Visser";
      homepage = "";
      url = "";
      synopsis = "Salvia webserver protocol suite supporting URI, HTTP, Cookie and MIME.";
      description = "Protocol suite for the Salvia webserver, including functionality for URI,\nHTTP, Cookie and MIME.\nThis pacakage exposes the datatypes, parsers, pretty printers and some\nutility functions to deal with several web protocols. The /fclabels/ package\nis used to generate labels pointing into the exposed datatypes, allowing to\neasily get, set and modify parts of the structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.safe)
          (hsPkgs.fclabels)
          (hsPkgs.split)
          (hsPkgs.bimap)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }