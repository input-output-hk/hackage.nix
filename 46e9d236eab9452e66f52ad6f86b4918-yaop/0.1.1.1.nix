{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yaop";
          version = "0.1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eugene Smolanka <smolanka.zhacka@gmail.com>";
        author = "Eugene Smolanka <smolanka.zhacka@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Yet another option parser";
        description = "A simple wrapper over the standard System.Console.GetOpt to make options\ndefining more convenient.";
        buildType = "Simple";
      };
      components = {
        yaop = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }