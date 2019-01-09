{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { libxml2 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "xeno"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marco Zocca (ocramz fripost org)";
      author = "Christopher Done";
      homepage = "https://github.com/ocramz/xeno";
      url = "";
      synopsis = "A fast event-based XML parser in pure Haskell";
      description = "A fast, low-memory use, event-based XML parser in pure Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.deepseq)
          (hsPkgs.array)
          (hsPkgs.mutable-containers)
          (hsPkgs.mtl)
          (hsPkgs.hspec)
          ];
        };
      tests = {
        "xeno-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xeno)
            (hsPkgs.hexml)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            ];
          };
        };
      benchmarks = {
        "xeno-speed-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xeno)
            (hsPkgs.hexml)
            (hsPkgs.criterion)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.ghc-prim)
            (hsPkgs.xml)
            (hsPkgs.hexpat)
            ] ++ (pkgs.lib).optional (flags.libxml2) (hsPkgs.libxml);
          };
        "xeno-memory-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.xeno)
            (hsPkgs.weigh)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.hexml)
            ];
          };
        };
      };
    }