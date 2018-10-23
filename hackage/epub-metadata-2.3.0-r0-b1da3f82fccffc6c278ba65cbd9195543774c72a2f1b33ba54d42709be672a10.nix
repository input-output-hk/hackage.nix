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
        name = "epub-metadata";
        version = "2.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "2010-2012 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/d/proj/epub-metadata.html";
      url = "";
      synopsis = "Library for parsing and manipulating ePub files and OPF package data";
      description = "Library for parsing and manipulating ePub files and OPF package data. An attempt has been made here to very thoroughly implement the OPF Package Document specification.";
      buildType = "Simple";
    };
    components = {
      "epub-metadata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.regex-compat)
          (hsPkgs.zip-archive)
        ];
      };
      tests = {
        "opf-parse" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HUnit)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.regex-compat)
            (hsPkgs.zip-archive)
          ];
        };
      };
    };
  }