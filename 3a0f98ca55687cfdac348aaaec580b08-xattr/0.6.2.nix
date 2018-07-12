{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "xattr";
          version = "0.6.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 by Evan Klitzke, (c) 2012 by Deian Stefan, (c) 2012 by Amit Levy";
        maintainer = "Deian Stefan <deian@cs.stanford.edu>";
        author = "Evan Klitzke, Deian Stefan";
        homepage = "";
        url = "";
        synopsis = "Haskell extended file attributes interface";
        description = "Relatively low-level interface to work with extended attributes\non Unix systems. This is a fairly straightforward port of the\nAPI exposed by SGI's libattr.";
        buildType = "Configure";
      };
      components = {
        "xattr" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unix
          ];
          libs = pkgs.lib.optional (!system.isOsx) pkgs.attr;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.xattr
              hsPkgs.unix
              hsPkgs.filepath
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }