{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "q4c12-twofinger"; version = "0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "quasicomputational <quasicomputational@gmail.com>";
      author = "quasicomputational <quasicomputational@gmail.com>";
      homepage = "https://github.com/quasicomputational/mega/tree/master/packages/twofinger";
      url = "";
      synopsis = "Efficient alternating finger trees";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.semigroupoids)
          (hsPkgs.streams)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.2") (hsPkgs.bifunctors);
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.lens)
            (hsPkgs.q4c12-twofinger)
            (hsPkgs.streams)
            (hsPkgs.template-haskell)
            ];
          };
        };
      };
    }