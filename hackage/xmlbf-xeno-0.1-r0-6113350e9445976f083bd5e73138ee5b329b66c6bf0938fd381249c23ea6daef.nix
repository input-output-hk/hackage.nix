{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "xmlbf-xeno";
        version = "0.1";
      };
      license = "Apache-2.0";
      copyright = "Copyright 2017 Renzo Carbonara";
      maintainer = "ren§ren*zone";
      author = "Renzo Carbonara";
      homepage = "https://gitlab.com/k0001/xmlbf";
      url = "";
      synopsis = "xeno backend support for the xmlbf library.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "xmlbf-xeno" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.html-entities)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.xeno)
          (hsPkgs.xmlbf)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.xmlbf)
            (hsPkgs.xmlbf-xeno)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }