{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "unsafeperformst";
          version = "0.9.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "atzeus@gmail.com";
        author = "Atze van der Ploeg";
        homepage = "https://github.com/atzeus/unsafeperformst";
        url = "";
        synopsis = "Like unsafeperformIO, but for the ST monad.";
        description = "Like unsafeperformIO, but for the ST monad.";
        buildType = "Simple";
      };
      components = {
        unsafeperformst = {
          depends  = [ hsPkgs.base ];
        };
      };
    }