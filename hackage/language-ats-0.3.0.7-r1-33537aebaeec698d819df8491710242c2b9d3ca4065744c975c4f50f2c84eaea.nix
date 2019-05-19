{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "language-ats"; version = "0.3.0.7"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
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
          (hsPkgs.lens)
          (hsPkgs.deepseq)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.recursion-schemes)
          (hsPkgs.composition-prelude)
          (hsPkgs.ansi-terminal)
          ];
        build-tools = [
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
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