{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "digestive-functors"; version = "0.8.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jasper Van der Jeugt <m@jaspervdj.be>";
      author = "Jasper Van der Jeugt <m@jaspervdj.be>";
      homepage = "http://github.com/jaspervdj/digestive-functors";
      url = "";
      synopsis = "A practical formlet library";
      description = "Digestive functors is a library inspired by formlets:\n\n<http://groups.inf.ed.ac.uk/links/formlets/>\n\nIt is intended to be an improvement of the Haskell formlets library, with as\nmain advantages:\n\n* better error handling, so a web page can display input errors right next\nto the corresponding fields;\n\n* the ability to easily add @\\<label\\>@ elements;\n\n* separation of the validation model and the HTML output.\n\nTutorial:\n<http://github.com/jaspervdj/digestive-functors/blob/master/examples/tutorial.lhs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.semigroups)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "digestive-functors-tests" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.semigroups)
            (hsPkgs.text)
            (hsPkgs.time)
            ];
          };
        };
      };
    }