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
        name = "tagged-transformer";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "2011-2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/tagged-transformer";
      url = "";
      synopsis = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
      description = "Provides newtype wrappers for phantom types to avoid unsafely passing dummy arguments";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.comonad)
          (hsPkgs.contravariant)
          (hsPkgs.distributive)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.reflection)
          (hsPkgs.semigroupoids)
          (hsPkgs.tagged)
        ];
      };
    };
  }