{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hscrtmpl";
          version = "1.3";
        };
        license = "BSD-3-Clause";
        copyright = "2013-2015 Dino Morelli";
        maintainer = "Dino Morelli <dino@ui3.info>";
        author = "Dino Morelli";
        homepage = "http://hub.darcs.net/dino/hscrtmpl";
        url = "";
        synopsis = "Haskell shell script template";
        description = "A template for writing shell scripts in Haskell. Contains some useful functions and examples of things commonly done in bash.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hscrtmpl = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.regex-compat
              hsPkgs.time
            ];
          };
        };
      };
    }