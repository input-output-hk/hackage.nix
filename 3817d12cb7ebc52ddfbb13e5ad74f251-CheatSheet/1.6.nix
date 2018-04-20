{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "CheatSheet";
          version = "1.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jgbailey _ codeslower _ com";
        author = "Justin Bailey";
        homepage = "http://blog.codeslower.com/2008/10/The-Haskell-Cheatsheet";
        url = "";
        synopsis = "A Haskell cheat sheet in PDF and literate formats.";
        description = "This module includes a PDF giving a synopsis of Haskell syntax, keywords,\nand other essentials. It also has a literate source file which allows all\nexamples to be inspected. Download and unpack this archive to view them.";
        buildType = "Simple";
      };
      components = {
        exes = {
          cheatsheet = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
            ];
          };
        };
      };
    }