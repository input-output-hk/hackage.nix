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
        name = "xml-tydom-conduit";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Jonathan Merritt";
      maintainer = "j.s.merritt@gmail.com";
      author = "Jonathan Merritt";
      homepage = "https://github.com/lancelet/xml-tydom";
      url = "";
      synopsis = "Typed XML encoding for an xml-conduit backend.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "xml-tydom-conduit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-tydom-core)
        ];
      };
      tests = {
        "xml-tydom-conduit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.xml-conduit)
            (hsPkgs.xml-tydom-conduit)
          ];
        };
      };
    };
  }