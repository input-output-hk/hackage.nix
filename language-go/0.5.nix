{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "language-go";
          version = "0.5";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "and_j_rob@yahoo.com";
        author = "Andrew Robbins";
        homepage = "";
        url = "";
        synopsis = "A library for analysis and synthesis of Go code.";
        description = "Language-Go is a library for analysis and generation of the Go programming language code.\nIt allows strict modeling of the syntax of Go very similar to other language libraries.\nFor more information on the language specification, see golang.org.";
        buildType = "Simple";
      };
      components = {
        language-go = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.parsec
            hsPkgs.utf8-string
          ];
        };
      };
    }