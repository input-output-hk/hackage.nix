{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "speculation-transformers";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett, Jake McArthur";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/speculation/";
        url = "";
        synopsis = "Merged into 'speculation'. Use that instead.";
        description = "Merged into 'speculation'. Use that instead.";
        buildType = "Simple";
      };
      components = {
        "speculation-transformers" = {
          depends  = [
            hsPkgs.speculation
          ];
        };
      };
    }