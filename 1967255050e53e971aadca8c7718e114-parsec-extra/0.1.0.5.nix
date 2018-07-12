{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "parsec-extra";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ariep@xs4all.nl";
        author = "Arie Peterson";
        homepage = "";
        url = "";
        synopsis = "Some miscellaneous basic string parsers.";
        description = "Basic string parsers for integer numbers and case-insensitive string parsing.\nAlso an alternative parse function, which throws a monadic error on parse failure.";
        buildType = "Simple";
      };
      components = {
        "parsec-extra" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.transformers
            hsPkgs.monads-tf
          ];
        };
      };
    }