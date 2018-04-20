{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "preliminaries";
          version = "0.1.6.0";
        };
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
        preliminaries = {
          depends  = [
            hsPkgs.classy-prelude-conduit
            hsPkgs.abstract-par
            hsPkgs.base
            hsPkgs.bifunctors
            hsPkgs.data-default
            hsPkgs.microlens-platform
            hsPkgs.microlens-contra
            hsPkgs.monad-par
            hsPkgs.monad-parallel
            hsPkgs.mono-traversable-instances
            hsPkgs.mtl
            hsPkgs.parallel
            hsPkgs.stm-conduit
            hsPkgs.string-conversions
          ];
        };
      };
    }