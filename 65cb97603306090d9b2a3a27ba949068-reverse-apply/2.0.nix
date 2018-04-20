{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "reverse-apply";
          version = "2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Standard version of the reverse apply operator.";
        description = "Provides a standard version of the reverse apply operator.\nIts definition is simply @(&) = flip (\$)@.";
        buildType = "Simple";
      };
      components = {
        reverse-apply = {
          depends  = [ hsPkgs.base ];
        };
      };
    }