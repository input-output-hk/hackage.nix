{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "her-lexer";
          version = "0.1.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Timothy Hobbs<timothyhobbs@seznam.cz>";
        author = "Conor McBride";
        homepage = "http://personal.cis.strath.ac.uk/~conor/pub/she";
        url = "";
        synopsis = "A lexer for Haskell source code.";
        description = "This is a simple lexer which converts Haskell source code into tokins and back to ordinary haskell again.";
        buildType = "Simple";
      };
      components = {
        "her-lexer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.split
          ];
        };
      };
    }