{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "haskore-vintage";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Paul Hudak";
        homepage = "http://haskell.org/haskore/";
        url = "";
        synopsis = "The February 2000 version of Haskore.";
        description = "The February 2000 version of Haskore.";
        buildType = "Simple";
      };
      components = {
        "haskore-vintage" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }