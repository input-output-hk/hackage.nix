{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.14.0";
        identifier = {
          name = "errors";
          version = "1.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Simplified error-handling";
        description = "The one-stop shop for all your error-handling needs!  Just import\n\"Control.Error\".\n\nThis library encourages an error-handling style that directly uses the type\nsystem, rather than out-of-band exceptions.";
        buildType = "Simple";
      };
      components = {
        errors = {
          depends  = [
            hsPkgs.base
            hsPkgs.either
            hsPkgs.safe
            hsPkgs.transformers
          ];
        };
      };
    }