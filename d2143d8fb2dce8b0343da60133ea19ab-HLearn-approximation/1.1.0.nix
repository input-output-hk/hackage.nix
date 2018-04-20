{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "HLearn-approximation";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mike@izbicki.me";
        author = "Mike izbicki";
        homepage = "";
        url = "";
        synopsis = "";
        description = "This package is deprecated.  The latest version of HLearn is available from the github repo at: <http://github.com/mikeizbicki/hlearn>.  If you want to use HLearn, I strongly recommend you contact me (mike@izbicki.me) first to see if HLearn will really fit your needs.";
        buildType = "Simple";
      };
      components = {
        HLearn-approximation = {
          depends  = [
            hsPkgs.HLearn-algebra
            hsPkgs.HLearn-distributions
            hsPkgs.HLearn-datastructures
            hsPkgs.ConstraintKinds
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.containers
            hsPkgs.list-extras
            hsPkgs.heap
          ];
        };
      };
    }