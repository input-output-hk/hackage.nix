{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "complex-generic";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/complex-generic";
      url = "";
      synopsis = "complex numbers with non-mandatory RealFloat";
      description = "The base package's 'Data.Complex' has a 'RealFloat' requirement for\nalmost all operations, which rules out uses such as 'Complex Rational'\nor 'Complex Integer'.  This package provides an alternative, putting\nmost operations into additional type classes.  Generating instances\nwith template haskell helps reduce excessive boilerplate and avoids\ninstance overlap.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }