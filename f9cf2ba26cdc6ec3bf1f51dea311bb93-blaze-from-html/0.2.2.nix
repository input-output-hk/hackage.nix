{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "blaze-from-html";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jaspervdj@gmail.com, simon.meier@inf.ethz.ch";
        author = "Jasper Van der Jeugt, Simon Meier";
        homepage = "http://jaspervdj.be/blaze";
        url = "";
        synopsis = "Tool to convert HTML to BlazeHtml code.";
        description = "Tool that converts HTML files to Haskell code, ready to be\nused with the BlazeHtml library.";
        buildType = "Simple";
      };
      components = {
        exes = {
          blaze-from-html = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.tagsoup
            ];
          };
        };
      };
    }