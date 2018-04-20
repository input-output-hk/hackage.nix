{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wembley";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Daniel Lovasko";
        maintainer = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        author = "Daniel Lovasko <daniel.lovasko@gmail.com>";
        homepage = "https://github.com/lovasko/wembley";
        url = "";
        synopsis = "Pretty-printing of codebases";
        description = "Pretty-printing of codebases for the purposes of code\nreview on paper or publication of a whole codebase\nin a document form.";
        buildType = "Simple";
      };
      components = {
        exes = {
          wembley = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.filemanip
              hsPkgs.optparse-applicative
              hsPkgs.split
            ];
          };
        };
      };
    }