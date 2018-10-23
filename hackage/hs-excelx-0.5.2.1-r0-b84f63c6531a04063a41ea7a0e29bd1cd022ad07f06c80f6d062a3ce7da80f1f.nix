{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hs-excelx";
        version = "0.5.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mebaran@gmail.com";
      author = "Mark Baran";
      homepage = "";
      url = "";
      synopsis = "HS-Excelx provides basic read-only access to Excel 2007 and 2010 documents in XLSX format.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hs-excelx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.zip-archive)
          (hsPkgs.xml-conduit)
        ];
      };
    };
  }