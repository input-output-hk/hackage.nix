{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "basement";
          version = "0.0.8";
        };
        license = "BSD-3-Clause";
        copyright = "2015-2017 Vincent Hanquez <vincent@snarc.org>\n, 2017-2018 Foundation Maintainers";
        maintainer = "vincent@snarc.org";
        author = "";
        homepage = "https://github.com/haskell-foundation/foundation#readme";
        url = "";
        synopsis = "Foundation scrap box of array & string";
        description = "Foundation most basic primitives without any dependencies";
        buildType = "Simple";
      };
      components = {
        "basement" = {
          depends  = pkgs.lib.optionals (!(compiler.isGhc && compiler.version.lt "8.0")) ([
            hsPkgs.base
            hsPkgs.ghc-prim
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32);
        };
      };
    }