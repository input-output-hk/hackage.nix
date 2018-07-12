{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snap-loader-dynamic";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Carl Howells";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "Snap dynamic loader";
        description = "Snap Framework dynamic code loader for development mode";
        buildType = "Simple";
      };
      components = {
        "snap-loader-dynamic" = {
          depends  = (([
            hsPkgs.base
            hsPkgs.directory-tree
            hsPkgs.mtl
            hsPkgs.snap-core
            hsPkgs.time
            hsPkgs.template-haskell
          ] ++ [
            hsPkgs.hint
          ]) ++ (if compiler.isGhc && compiler.version.ge "7.6.0"
            then [ hsPkgs.directory ]
            else [
              hsPkgs.directory
              hsPkgs.old-time
            ])) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }