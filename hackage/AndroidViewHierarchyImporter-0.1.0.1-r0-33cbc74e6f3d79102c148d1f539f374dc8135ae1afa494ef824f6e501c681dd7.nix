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
      specVersion = "1.8";
      identifier = {
        name = "AndroidViewHierarchyImporter";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012, alpheccar";
      maintainer = "misc@alpheccar.org";
      author = "alpheccar";
      homepage = "";
      url = "";
      synopsis = "Android view hierarchy importer";
      description = "Tool to import a description of an Android view hierarchy through Abd and the Android view server.\nYou can find more documentation in the @Main@ file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "AndroidViewHierarchyImporter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.split)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.opml)
            (hsPkgs.xml)
            (hsPkgs.cmdtheline)
            (hsPkgs.pretty)
          ];
        };
      };
    };
  }