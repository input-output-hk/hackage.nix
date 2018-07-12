{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory-stdlib";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Galois, Inc.";
        maintainer = "leepike@galois.com";
        author = "Galois, Inc.";
        homepage = "http://ivorylang.org";
        url = "";
        synopsis = "Ivory standard library.";
        description = "A standard library for Ivory.";
        buildType = "Simple";
      };
      components = {
        "ivory-stdlib" = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.ivory
            hsPkgs.ivory-artifact
          ];
        };
      };
    }