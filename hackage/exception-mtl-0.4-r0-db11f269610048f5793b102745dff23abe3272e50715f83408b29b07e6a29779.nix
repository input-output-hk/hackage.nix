{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "exception-mtl"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011 Harvard University\n(c) 2011-2015 Geoffrey Mainland";
      maintainer = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
      homepage = "";
      url = "";
      synopsis = "Exception monad transformer instances for mtl classes.";
      description = "This package provides exception monad transformer instances for\nthe classes defined by mtl.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.exception-transformers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          ];
        };
      };
    }