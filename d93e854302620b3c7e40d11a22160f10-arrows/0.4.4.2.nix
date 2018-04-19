{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "arrows";
          version = "0.4.4.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ross Paterson <R.Paterson@city.ac.uk>";
        author = "Ross Paterson <R.Paterson@city.ac.uk>";
        homepage = "http://www.haskell.org/arrows/";
        url = "";
        synopsis = "Arrow classes and transformers";
        description = "Several classes that extend the Arrow class, and some\ntransformers that implement or lift these classes.";
        buildType = "Simple";
      };
      components = {
        arrows = {
          depends  = [
            hsPkgs.base
            hsPkgs.Stream
          ];
        };
      };
    }