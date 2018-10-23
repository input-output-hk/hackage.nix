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
        name = "doctemplates";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/doctemplates#readme";
      url = "";
      synopsis = "Pandoc-style document templates";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "doctemplates" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-markup)
          (hsPkgs.blaze-html)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.parsec)
          (hsPkgs.unordered-containers)
          (hsPkgs.scientific)
        ];
      };
      tests = {
        "doctemplates-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctemplates)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
      };
    };
  }