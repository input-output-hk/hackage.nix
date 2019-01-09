{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "exception-monads-tf"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2010 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "Exception monad transformer instances for monads-tf classes.";
      description = "This package provides exception monad transformer instances for\nthe classes defined by monads-tf.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exception-transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.transformers)
          ];
        };
      };
    }