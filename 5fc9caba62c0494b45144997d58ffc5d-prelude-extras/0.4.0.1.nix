{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "prelude-extras";
          version = "0.4.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011-2014 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/prelude-extras";
        url = "";
        synopsis = "Higher order versions of Prelude classes";
        description = "Higher order versions of Prelude classes to ease programming with polymorphic recursion and reduce UndecidableInstances\n\nSee <http://flint.cs.yale.edu/trifonov/papers/sqcc.pdf> for further discussion of the approach taken here.";
        buildType = "Simple";
      };
      components = {
        prelude-extras = {
          depends  = [ hsPkgs.base ];
        };
      };
    }