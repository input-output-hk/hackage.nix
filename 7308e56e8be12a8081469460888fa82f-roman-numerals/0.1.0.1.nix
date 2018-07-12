{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "roman-numerals";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2009 Roel van Dijk";
        maintainer = "vandijk.roel@gmail.com";
        author = "Roel van Dijk";
        homepage = "";
        url = "";
        synopsis = "Parsing and pretty printing of Roman numerals";
        description = "This library provides functions for parsing and pretty printing\nRoman numerals. Because the notation of Roman numerals has varied\nthrough the centuries this package allows for some customisation\nusing a configuration that is passed to the conversion\nfunctions. Exceptions are dealt with by wrapping the results of\nconversions in the error monad.";
        buildType = "Simple";
      };
      components = {
        "roman-numerals" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-unicode-symbols
            hsPkgs.mtl
          ];
        };
      };
    }