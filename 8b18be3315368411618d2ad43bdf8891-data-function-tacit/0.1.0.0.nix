{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-function-tacit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2016, Eric Brisco";
        maintainer = "eric.brisco@gmail.com";
        author = "Eric Brisco";
        homepage = "https://github.com/erisco/data-function-tacit";
        url = "";
        synopsis = "Write functions in tacit (pointless) style using Applicative and De Bruijn index notation.";
        description = "Write functions in tacit (pointless) style using Applicative and De Bruijn index notation.";
        buildType = "Simple";
      };
      components = {
        data-function-tacit = {
          depends  = [ hsPkgs.base ];
        };
      };
    }