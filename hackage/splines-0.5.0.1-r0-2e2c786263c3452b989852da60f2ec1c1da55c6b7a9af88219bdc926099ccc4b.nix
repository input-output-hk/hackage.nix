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
        name = "splines";
        version = "0.5.0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "";
      url = "";
      synopsis = "B-Splines, other splines, and NURBS.";
      description = "This is a fairly simple implementation of a\ngeneral-purpose spline library, just to get the code\nout there.  Its interface is still mildly unstable and\nmay change (hopefully not drastically) as new needs or\nbetter style ideas come up.  Patches, suggestions\nand/or feature requests are welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.polynomial)
          (hsPkgs.vector)
          (hsPkgs.vector-space)
        ];
      };
      tests = {
        "splines-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.polynomial)
            (hsPkgs.splines)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            (hsPkgs.vector)
            (hsPkgs.vector-space)
          ];
        };
      };
      benchmarks = {
        "splines-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.polynomial)
            (hsPkgs.splines)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }