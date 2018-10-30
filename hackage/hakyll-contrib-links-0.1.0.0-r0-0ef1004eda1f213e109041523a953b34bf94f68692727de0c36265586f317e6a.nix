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
      specVersion = "1.9.2";
      identifier = {
        name = "hakyll-contrib-links";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppk@cse.iitk.ac.in";
      author = "Piyush P Kurur";
      homepage = "";
      url = "";
      synopsis = "A hakyll library that helps maintain a separate links database.";
      description = "Often when building packages we would like to collect all\ncommonly occuring urls in a separate file and include it in all\npages. This module facilitates maintaining such links database and\nincluding it with different pages. The syntax of the links database\nis that of markdown.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.parsec)
          (hsPkgs.hakyll)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.hakyll-contrib-links)
          ];
        };
      };
    };
  }