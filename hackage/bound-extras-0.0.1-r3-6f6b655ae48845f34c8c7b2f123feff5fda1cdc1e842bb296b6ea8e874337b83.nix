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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bound" or ((hsPkgs.pkgs-errors).buildDepError "bound"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"));
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bound" or ((hsPkgs.pkgs-errors).buildDepError "bound"))
            (hsPkgs."bound-extras" or ((hsPkgs.pkgs-errors).buildDepError "bound-extras"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-golden" or ((hsPkgs.pkgs-errors).buildDepError "tasty-golden"))
            (hsPkgs."text-short" or ((hsPkgs.pkgs-errors).buildDepError "text-short"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.2")) (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"));
          buildable = true;
          };
        };
      };
    }