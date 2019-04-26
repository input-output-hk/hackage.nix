{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "bound-extras"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus, Edward Kmett";
      homepage = "https://github.com/phadej/bound-extras";
      url = "";
      synopsis = "ScopeH and ScopeT extras for bound";
      description = "Provides more complex @Scope@ variants; @ScopeT@ and @ScopeH@:\n\n@\nScope  b f a   ~ ScopeT b IdentityT f a ~ ScopeH b f f a\nScopeT b t f a ~ ScopeH b (t f) f a\n@\n\n'ScopeH' probably should be preferred over 'ScopeT'.\nLatter is left here for completeness.\n\nSimple implementations of @ScopeH@ and @ScopeT@ would be similar\n(sans type arguments) to @Bound.Scope.Simple@.\n\nLook into @examples/@ directory for /System F/ and /Bidirectional STLC/\nimplemented with a help of 'ScopeH'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.transformers)
          (hsPkgs.bound)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs.bifunctors);
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bound)
            (hsPkgs.bound-extras)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.pretty)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.text-short)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs.bifunctors);
          };
        };
      };
    }