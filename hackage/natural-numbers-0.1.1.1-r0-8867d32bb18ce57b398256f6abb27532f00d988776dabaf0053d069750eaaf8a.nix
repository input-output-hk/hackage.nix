{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "natural-numbers"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2010 Brandenburgische Technische Universität Cottbus;\n© 2012 Wolfgang Jeltsch";
      maintainer = "wolfgang@cs.ioc.ee";
      author = "Wolfgang Jeltsch";
      homepage = "http://darcs.wolfgang.jeltsch.info/haskell/natural-numbers";
      url = "http://hackage.haskell.org/packages/archive/natural-numbers/0.1.1.1/natural-numbers-0.1.1.1.tar.gz";
      synopsis = "Natural numbers";
      description = "This package provides a type of all natural numbers, that is, non-negative integers.\n\nIn contrast to the @naturals@ package, it does not use an “indeterminate value” to\nrepresent underflows, but raises errors on underflows. We think this is more\nreasonable, as this “indeterminate value” is not really a natural.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }