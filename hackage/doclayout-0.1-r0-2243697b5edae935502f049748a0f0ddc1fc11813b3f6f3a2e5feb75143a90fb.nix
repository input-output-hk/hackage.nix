{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "doclayout"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-19 John MacFarlane";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane";
      homepage = "https://github.com/jgm/doclayout";
      url = "";
      synopsis = "A prettyprinting library for laying out text documents.";
      description = "doclayout is a prettyprinting library for laying out\ntext documents, with several features not present\nin prettyprinting libraries designed for code.  It\nwas designed for use in pandoc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.safe)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
        };
      tests = {
        "doclayout-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doclayout)
            (hsPkgs.mtl)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "doclayout-bench" = {
          depends = [
            (hsPkgs.doclayout)
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.text)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }