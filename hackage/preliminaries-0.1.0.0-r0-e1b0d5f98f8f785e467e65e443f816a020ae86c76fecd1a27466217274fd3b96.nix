{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "preliminaries"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2016 Yghor Kerscher";
      maintainer = "kerscher@acm.org";
      author = "Yghor Kerscher";
      homepage = "http://github.com/kerscher/preliminaries";
      url = "";
      synopsis = "A larger alternative to the Prelude.";
      description = "A GHC-only alternative to the Prelude with a large amount of imports available by default.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.classy-prelude-conduit)
          (hsPkgs.abstract-par)
          (hsPkgs.bifunctors)
          (hsPkgs.microlens-platform)
          (hsPkgs.microlens-contra)
          (hsPkgs.monad-par)
          (hsPkgs.monad-parallel)
          (hsPkgs.mono-traversable-instances)
          (hsPkgs.parallel)
          (hsPkgs.mtl)
          (hsPkgs.stm-conduit)
          ];
        };
      };
    }