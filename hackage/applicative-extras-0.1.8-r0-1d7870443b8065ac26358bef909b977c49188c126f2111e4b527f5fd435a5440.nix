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
      specVersion = "0";
      identifier = {
        name = "applicative-extras";
        version = "0.1.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Eidhof <chris+hackage@eidhof.nl>";
      author = "Chris Eidhof <chris+hackage@eidhof.nl>, Russel O'Connor, Jeremy Shaw";
      homepage = "http://github.com/chriseidhof/applicative-extras/";
      url = "";
      synopsis = "Instances for Applicative";
      description = "Some instances for applicative functors and type-level\ncomposition. Forkable on github.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }