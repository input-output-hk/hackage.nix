{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "OrPatterns"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A quasiquoter for or-patterns";
      description = "A quasiquoter for or-patterns. It allows one additional\nform for patterns:\n\n> f [o| p1 | p2 | p3 |] = rhs\n\nAbove, @p1@, @p2@ and @p3@ are three arbitrary patterns\nthat bind the same variables. These variables are\navailable in the expression @rhs@. Nesting of or-patterns\nis not supported yet.\n\nSee also:\n\n* http://hackage.haskell.org/package/first-class-patterns\nsupports @\\\\\\/@ (or). However, variables bound with\nthose patterns are not named. This means:\n\n> g :: Either (x, y) (y, x) -> (x, y)\n> g [o| Left (x,y) | Right (y,x) |] = (x,y)\n\n> -- ends up slightly longer\n> g = elim \$ left (pair var var) \\/ right flipped ->> (,)\n>  where\n>   flipped = (\\(a,b) -> (b,a)) --> pair var var\n\n* http://hackage.haskell.org/trac/ghc/ticket/3919\nis the feature request for or-patterns in ghc";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.syb)
          (hsPkgs.split)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.containers)
          ];
        };
      };
    }