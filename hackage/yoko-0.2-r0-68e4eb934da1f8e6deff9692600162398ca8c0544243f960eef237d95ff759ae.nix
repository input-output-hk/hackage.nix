{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "yoko";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "generic programming with disbanded constructors";
      description = "@yoko@ views a nominal datatype as a /band/ of constructors, each\na nominal type in its own right. Such datatypes can be disbanded via the\n@disband@ function into an anonymous sum of nominal constructors, and vice\nversa via the @band@ function. This library uses extensive type-level\nprogramming to enrich its @instant-generics@ foundation with capabilities\nderived from the constructor-centric perspective.\n\nFor example, consider the following /nominal datatype/.\n\n@\ndata Beatles = John ... | Paul ... | George ... | Ringo ...\n@\n\nThis type can of course be understood as a sum of the individual\n/constructor types/.\n\n@\ndata John = John ...\ndata Paul = Paul ...\ndata George = George ...\ndata Ringo = Ringo ...\n@\n\n@yoko@'s conceptual foundations start there. In particular, this allows a\nconstructor, say @John@, to be used independently of its original range type\nand sibling constructors.\n\nAs a generic programming library, @yoko@ extends @instant-generics@ with\nsupport for constructor-centric generic programming. The @Examples/LL.hs@\nfile distributed with the @yoko@ source demonstrates defining a\nlambda-lifting conversion between the two types @Inner@, which has lambdas,\nand @Prog@, which has top-level function declarations instead.\n\n@\ndata Inner = Lam Type Inner | Var Int | App Inner Inner\n\ndata Term = Var Int | App Term Term | DVar Int\ndata Prog = Prog ([Type], Type, Term) Term\n@\n\nThese types are defined in separate modules, since they have constructors\nwith the same name. Indeed, the fact that they having matching constructors\nnamed @App@ is crucial for @yoko@'s automatic conversion from @Inner@'s @App@\nto @Term@'s @App@. As written, the generic lambda-lifter would continue to\nwork for any new @Inner@ constructors (e.g. syntax for tuples or mutable\nreferences) as long as constructors with the same names and analogous fields\nwere added to @Term@ and the semantics of those constructors doesn't involve\nbinding. This default behavior of the lambda-lifter is specified in about ten\nlines of user code.\n\nExisting generic libraries don't use constructor names to the degree that\n@yoko@ does, and so cannot accomodate generic /conversions/ nearly as well.\n\nSee the wiki at <http://code.google.com/p/yoko> for more documentation.";
      buildType = "Simple";
    };
    components = {
      "yoko" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-equality)
          (hsPkgs.tagged)
          (hsPkgs.type-booleans)
          (hsPkgs.type-spine)
          (hsPkgs.tagged-th)
          (hsPkgs.type-digits)
          (hsPkgs.type-cereal)
          (hsPkgs.type-ord)
          (hsPkgs.type-ord-spine-cereal)
        ];
      };
    };
  }