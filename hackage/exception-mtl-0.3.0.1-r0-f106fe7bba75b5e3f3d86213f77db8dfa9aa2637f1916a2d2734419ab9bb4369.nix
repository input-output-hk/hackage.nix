{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "exception-mtl";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2011 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "Exception monad transformer instances for mtl2 classes.";
      description = "This package provides exception monad transformer instances for\nthe classes defined by mtl2.";
      buildType = "Simple";
    };
    components = {
      "exception-mtl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exception-transformers)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }