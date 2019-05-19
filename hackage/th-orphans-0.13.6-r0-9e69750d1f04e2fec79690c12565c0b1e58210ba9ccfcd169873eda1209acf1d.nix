{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "th-orphans"; version = "0.13.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow";
      maintainer = "Michael Sloan <mgsloan at gmail>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Orphan instances for TH datatypes";
      description = "Orphan instances for TH datatypes.  In particular, instances\nfor Ord and Lift, as well as a few missing Show / Eq.  These\ninstances used to live in haskell-src-meta, and that's where\nthe version number started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift)
          (hsPkgs.th-reify-many)
          (hsPkgs.th-lift-instances)
          (hsPkgs.mtl)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs.generic-deriving)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.th-orphans)
            (hsPkgs.hspec)
            (hsPkgs.template-haskell)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }