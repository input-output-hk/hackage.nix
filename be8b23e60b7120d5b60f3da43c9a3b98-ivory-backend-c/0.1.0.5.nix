{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory-backend-c";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "leepike@galois.com";
        author = "Galois, Inc.";
        homepage = "http://ivorylang.org";
        url = "";
        synopsis = "Ivory C backend.";
        description = "Ivory compiler, to a subset of C99.";
        buildType = "Simple";
      };
      components = {
        "ivory-backend-c" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.language-c-quote
            hsPkgs.srcloc
            hsPkgs.mainland-pretty
            hsPkgs.monadLib
            hsPkgs.template-haskell
            hsPkgs.bytestring
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.containers
            hsPkgs.ivory
            hsPkgs.ivory-opts
            hsPkgs.ivory-artifact
          ];
        };
      };
    }