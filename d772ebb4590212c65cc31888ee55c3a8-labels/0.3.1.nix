{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "labels";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "https://github.com/chrisdone/labels#readme";
        url = "";
        synopsis = "Anonymous records via named tuples";
        description = "Declare and access tuple fields with labels. An approach to anonymous records.";
        buildType = "Simple";
      };
      components = {
        labels = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }