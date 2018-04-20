{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "yaop";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "smolanka.zhacka@gmail.com";
        author = "Eugene Smolanka";
        homepage = "";
        url = "";
        synopsis = "Yet another option parser";
        description = "A wrapper over the standard System.Console.GetOpt to make option description more convenient.";
        buildType = "Simple";
      };
      components = {
        yaop = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.haskell98
            hsPkgs.mtl
          ];
        };
      };
    }