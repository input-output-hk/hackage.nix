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
      specVersion = "1.6";
      identifier = {
        name = "exception-monads-fd";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2010 Harvard University";
      maintainer = "mainland@eecs.harvard.edu";
      author = "Geoffrey Mainland <mainland@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~mainland/";
      url = "";
      synopsis = "A monads-fd monad transformer for unchecked extensible\nexceptions.";
      description = "This package provides a monad transformer that allows unchecked\nextensible exceptions to be thrown and caught. Compatible with\nmonads-fd.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.monads-fd)
          (hsPkgs.transformers)
        ];
      };
    };
  }