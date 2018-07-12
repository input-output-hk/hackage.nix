{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "language-bash";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2013 Kyle Raftogianis";
        maintainer = "Kyle Raftogianis <kylerafto@gmail.com>";
        author = "Kyle Raftogianis";
        homepage = "http://github.com/knrafto/language-bash/";
        url = "";
        synopsis = "Parsing and pretty-printing Bash shell scripts";
        description = "A library for parsing and pretty-printing Bash shell scripts.";
        buildType = "Simple";
      };
      components = {
        "language-bash" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.pretty
            hsPkgs.transformers
          ];
        };
      };
    }