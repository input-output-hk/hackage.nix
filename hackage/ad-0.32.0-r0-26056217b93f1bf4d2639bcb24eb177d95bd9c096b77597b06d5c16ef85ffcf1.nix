{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "ad";
        version = "0.32.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Edward Kmett 2010,\n(c) Barak Pearlmutter and Jeffrey Mark Siskind 2008-2009";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Automatic Differentiation";
      description = "Forward-, reverse- and mixed- mode automatic differentiation combinators with a common API.\n\nType-level \\\"branding\\\" is used to both prevent the end user from confusing infinitesimals\nand to limit unsafe access to the implementation details of each Mode.\n\nThe combinators in \"Numeric.AD\" choose from a variety of automatic differentiation modes,\nbased on the arity of their inputs and outputs.";
      buildType = "Simple";
    };
    components = {
      "ad" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-reify)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
          (hsPkgs.mlist)
          (hsPkgs.array)
        ];
      };
    };
  }