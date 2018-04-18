{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snap-loader-dynamic";
          version = "0.10";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Carl Howells";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "Snap: A Haskell Web Framework: dynamic loader";
        description = "Snap Framework dynamic loader";
        buildType = "Simple";
      };
      components = {
        snap-loader-dynamic = {
          depends  = (([
            hsPkgs.base
            hsPkgs.directory-tree
            hsPkgs.mtl
            hsPkgs.snap-core
            hsPkgs.time
            hsPkgs.template-haskell
          ] ++ [
            hsPkgs.hint
          ]) ++ (if compiler.isGhc
            then [ hsPkgs.directory ]
            else [
              hsPkgs.directory
              hsPkgs.old-time
            ])) ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }