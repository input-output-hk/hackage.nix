{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "biohazard";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2010-2017 Udo Stenzel";
        maintainer = "u.stenzel@web.de";
        author = "Udo Stenzel";
        homepage = "https://bitbucket.org/ustenzel/biohazard";
        url = "";
        synopsis = "bioinformatics support library";
        description = "This is a collection of modules I separated from\nvarious bioinformatics tools.";
        buildType = "Simple";
      };
      components = {
        biohazard = {
          depends  = [
            hsPkgs.async
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base-prelude
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.exceptions
            hsPkgs.hashable
            hsPkgs.primitive
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.vector-th-unbox
            hsPkgs.zlib
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
        };
      };
    }