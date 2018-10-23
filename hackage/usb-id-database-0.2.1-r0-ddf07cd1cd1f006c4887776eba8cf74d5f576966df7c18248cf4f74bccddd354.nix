{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "usb-id-database";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Roel van Dijk";
      maintainer = "vandijk.roel@gmail.com";
      author = "Roel van Dijk";
      homepage = "";
      url = "";
      synopsis = "A database of USB identifiers";
      description = "Functions to find the names associated with numerical vendor and\nproduct identifiers.";
      buildType = "Simple";
    };
    components = {
      "usb-id-database" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bimap)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.download)
          (hsPkgs.encoding)
          (hsPkgs.parsimony)
          (hsPkgs.utf8-string)
        ];
      };
      exes = { "example" = {}; };
    };
  }