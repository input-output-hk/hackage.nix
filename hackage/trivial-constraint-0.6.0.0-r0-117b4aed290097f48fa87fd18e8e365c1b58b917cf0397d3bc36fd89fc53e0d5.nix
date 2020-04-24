{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "trivial-constraint"; version = "0.6.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jsag@hvl.no";
      author = "Justus Sagemüller";
      homepage = "https://github.com/leftaroundabout/trivial-constraint";
      url = "";
      synopsis = "Constraints that any type, resp. no type fulfills";
      description = "Since GHC 7.4, constraints are first-class: we have the constraint\nkind, and thus type-classes have a kind of form @k -> Constraint@,\nor @k -> l -> m -> ... -> Constraint@ for a multi-param type class.\nSuch type-level functions can be used as arguments to data types, or\nas instances for other type classes.\n\nFor any given arity, the constraint-valued functions form a semigroup\nwith respect to “constraint intersection”, which Haskell supports with\ntuple syntax, e.g.\n\n@\ntype NewCstrt¹ a = (Cstrt¹₀ a, Cstrt¹₁ a)\n@\n\nmeans that @NewCstrt¹ :: * -> Constraint@ requires that for\nany given parameter both @Cstrt¹₀@ and @Cstrt¹₁@ be fulfilled.\nIt is intuitive enough that this type-level semigroup can be extended\nto a monoid, but out of the box this is only possible for arity 0,\ni.e. for @Cstrt⁰ :: Constraint@\n\n@\n(Cstrt⁰, ()) ~ ((), Cstrt⁰) ~ Cstrt⁰\n@\n\nFor higher arity, this would require type-level lambdas, like for\n@Cstrt² :: * -> * -> Constraint@\n\n@\n(Cstrt², \\\\a b -> ()) ~ (\\\\a b -> (), Cstrt²) ~ Cstrt²\n@\n\nwhich is not valid Haskell syntax. It is easy enough to define the\nlambdas in an ad-hoc manner as\n\n@\ntype Unconstrained² a b = ()\n@\n\nand then\n\n@\n(Cstrt², Unconstrained²) ~ (Unconstrained², Cstrt²) ~ Cstrt²\n@\n\nThis library provides those /trivial constraints/ in\na single, documented place, and it uses classes instead of\ntype-synonyms (which would be problematic when it comes to partial\napplication). Arities 0-9 are provided.\n\nThey can be useful in any construction that is parameterised over a\nconstrainer-class, when you do /not/ wish to actually constrain the\ndomain with it.\n\nThe other thing this library provides are the opposite classes,\ni.e. @\\\\a b ... -> Impossible@, constraints which can /never/ be\nfulfilled. They are essentially dual to the @Unconstrained@ ones,\nand can likewise be useful as parameters that should completely\n“disable” a conditional feature.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }