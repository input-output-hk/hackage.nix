{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "nurbs";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "voidex@live.com";
        author = "Alexanrd `voidex` Ruchkin";
        homepage = "https://github.com/mvoidex/nurbs";
        url = "";
        synopsis = "NURBS";
        description = "Simple NURBS library with support of NURBS, periodic NURBS, knot insertion-removal, NURBS split-joint\n\n> import Control.Lens\n> import Linear.NURBS\n> import Linear.V2\n> import Test.Hspec\n>\n> -- | Simple NURBS of degree 3\n> test₁ ∷ NURBS V2 Double\n> test₁ = nurbs 3 [\n>   V2 0.0 0.0,\n>   V2 10.0 0.0,\n>   V2 10.0 10.0,\n>   V2 20.0 20.0,\n>   V2 0.0 20.0,\n>   V2 (-20.0) 0.0]\n>\n> -- | Another NURBS of degree 3\n> test₂ ∷ NURBS V2 Double\n> test₂ = nurbs 3 [\n>   V2 (-20.0) 0.0,\n>   V2 (-20.0) (-20.0),\n>   V2 0.0 (-40.0),\n>   V2 20.0 20.0]\n>\n> -- | Make test₁ periodic\n> testₒ ∷ NURBS V2 Double\n> testₒ = set periodic True test₁\n>\n> main ∷ IO ()\n> main = hspec \$ do\n>   describe \"evaluate point\" \$ do\n>     it \"should start from first control point\" \$\n>       (test₁ `eval` 0.0) ≃ (test₁ ^?! wpoints . _head . wpoint)\n>     it \"should end at last control point\" \$\n>       (test₁ `eval` 1.0) ≃ (test₁ ^?! wpoints . _last . wpoint)\n>   describe \"insert knot\" \$ do\n>     it \"should not change nurbs curve\" \$\n>       insertKnots [(1, 0.1), (2, 0.3)] test₁ ≃ test₁\n>   describe \"remove knots\" \$ do\n>     it \"should not change nurbs curve\" \$\n>       removeKnots [(1, 0.1), (2, 0.3)] (insertKnots [(1, 0.1), (2, 0.3)] test₁) ≃ test₁\n>   describe \"purge knots\" \$ do\n>     it \"should not change nurbs curve\" \$\n>       purgeKnots (insertKnots [(1, 0.1), (2, 0.6)] test₁) ≃ test₁\n>   describe \"split\" \$ do\n>     it \"should work as cut\" \$\n>       snd (split 0.4 test₁) ≃ cut (Span 0.4 1.0) test₁\n>   describe \"normalize\" \$ do\n>     it \"should not affect curve\" \$\n>       cut (Span 0.2 0.8) test₁ ≃ normalizeKnot (cut (Span 0.2 0.8) test₁)\n>   describe \"joint\" \$ do\n>     it \"should joint cutted nurbs\" \$\n>       uncurry joint (split 0.3 test₁) ≃ Just test₁\n>     it \"should cut jointed nurbs\" \$\n>       (cut (Span 0.0 1.0) <\$> (test₁ ⊕ test₂)) ≃ Just test₁\n>     it \"should cut jointed nurbs\" \$\n>       (cut (Span 1.0 2.0) <\$> (test₁ ⊕ test₂)) ≃ Just test₂\n>   describe \"periodic\" \$ do\n>     it \"can be broken into simple nurbs\" \$\n>       breakLoop 0.0 testₒ ≃ testₒ\n>     it \"can be broken in any place\" \$\n>       uncurry (flip (⊕)) (split 0.5 (breakLoop 0.0 testₒ)) ≃ Just (breakLoop 0.5 testₒ)";
        buildType = "Simple";
      };
      components = {
        nurbs = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.mtl
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.base-unicode-symbols
              hsPkgs.lens
              hsPkgs.linear
              hsPkgs.hspec
              hsPkgs.nurbs
            ];
          };
        };
      };
    }