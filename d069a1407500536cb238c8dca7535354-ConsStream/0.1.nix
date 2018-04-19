{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "ConsStream";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "conal@conal.net";
        author = "Conal Elliott";
        homepage = "github";
        url = "";
        synopsis = "Trivial re-export of Wouter Swierstra's Stream package,\navoiding module name clash.";
        description = "";
        buildType = "Simple";
      };
      components = {
        ConsStream = {
          depends  = [
            hsPkgs.base
            hsPkgs.Stream
          ];
        };
      };
    }