{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yaop";
          version = "0.1.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Eugene Smolanka <esmolanka@gmail.com>";
        author = "Eugene Smolanka <esmolanka@gmail.com>";
        homepage = "https://github.com/esmolanka/yaop";
        url = "";
        synopsis = "Yet another option parser";
        description = "A simple wrapper over the standard System.Console.GetOpt to make options\ndefining more convenient.";
        buildType = "Simple";
      };
      components = {
        "yaop" = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.mtl
          ];
        };
      };
    }