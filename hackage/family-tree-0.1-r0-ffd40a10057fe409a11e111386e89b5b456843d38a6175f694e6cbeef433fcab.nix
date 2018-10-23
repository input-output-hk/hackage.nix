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
        name = "family-tree";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2012 Nathan \"Taneb\" van Doorn";
      maintainer = "nvd1234@gmail.com";
      author = "Nathan \"Taneb\" van Doorn";
      homepage = "";
      url = "";
      synopsis = "Family trees with lenses";
      description = "This is a module which contains a data type for family trees.\n\nIt also includes appropriate lenses!";
      buildType = "Simple";
    };
    components = {
      "family-tree" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.time)
          (hsPkgs.data-lens)
          (hsPkgs.binary)
        ];
      };
    };
  }