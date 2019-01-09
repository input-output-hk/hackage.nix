{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "snap-error-collector"; version = "1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ollie@ocharles.org.uk";
      author = "Ollie Charles";
      homepage = "http://github.com/ocharles/snap-error-collector";
      url = "";
      synopsis = "Collect errors in batches and dispatch them";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.monad-loops)
          (hsPkgs.snap)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
          ];
        };
      };
    }