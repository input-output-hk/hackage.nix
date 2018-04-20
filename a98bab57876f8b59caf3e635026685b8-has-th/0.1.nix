{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "has-th";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Chris Done 2010";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "http://github.com/chrisdone/has-th";
        url = "";
        synopsis = "Template Haskell function for Has records.";
        description = "Template Haskell function for definining Has records.";
        buildType = "Simple";
      };
      components = {
        has-th = {
          depends  = [
            hsPkgs.template-haskell
            hsPkgs.has
            hsPkgs.base
          ];
        };
      };
    }