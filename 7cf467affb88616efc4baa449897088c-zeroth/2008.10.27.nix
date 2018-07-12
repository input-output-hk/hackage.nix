{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "zeroth";
          version = "2008.10.27";
        };
        license = "BSD-3-Clause";
        copyright = "2005-2008 Lemmih <lemmih@gmail.com>";
        maintainer = "Lemmih <lemmih@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "ZeroTH - remove unnecessary TH depdendencies.";
        description = "TemplateHaskell is fairly useful for generating new\nHaskell programs. This, however, incur a dependency on\nTH on subsequent uses where none theoretically should exist.\nZeroTH solves this by scanning a file for top-level TH\ndeclarations, evaluates them, and then puts the generated\ncode back.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "zeroth" = {
            depends  = [
              hsPkgs.base
              hsPkgs.haskell-src-exts
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }