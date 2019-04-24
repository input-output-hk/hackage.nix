{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { cross = false; development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "language-ats"; version = "1.7.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2019 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Parser and pretty-printer for ATS.";
      description = "Parser and pretty-printer for [ATS](http://www.ats-lang.org/), written with Happy and Alex.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.recursion)
          (hsPkgs.microlens)
          (hsPkgs.deepseq)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.composition-prelude)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          ];
        build-tools = (pkgs.lib).optionals (!flags.cross) [
          ((hsPkgs.buildPackages).happy)
          ((hsPkgs.buildPackages).alex)
          ];
        };
      tests = {
        "language-ats-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.language-ats)
            (hsPkgs.hspec)
            (hsPkgs.hspec-dirstream)
            (hsPkgs.system-filepath)
            ];
          };
        };
      benchmarks = {
        "language-ats-bench" = {
          depends = [ (hsPkgs.base) (hsPkgs.language-ats) (hsPkgs.criterion) ];
          };
        };
      };
    }