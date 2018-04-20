{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "blaze-html";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jaspervdj@gmail.com";
        author = "Jasper Van der Jeugt";
        homepage = "http://jaspervdj.be/blaze";
        url = "";
        synopsis = "A blazingly fast HTML combinator library.";
        description = "A blazingly fast HTML combinator library for the Haskell\nprogramming language.";
        buildType = "Simple";
      };
      components = {
        blaze-html = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
      };
    }