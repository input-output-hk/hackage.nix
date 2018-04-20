{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "xsact";
          version = "1.7.2";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Ketil Malde <ketil@malde.org>";
        author = "Ketil Malde";
        homepage = "http://malde.org/~ketil/";
        url = "";
        synopsis = "Cluster EST sequences";
        description = "Xsact is an EST clustering program with a variety of output options.\nThis package exposes the internal libraries, and provides 4 binaries:\n\n* xsact; implements a complete multiple-matching clustering algorithm.\n* xplit; This implements a simple splitter for xsact's UniGene-formatted files.\nUseful if you want to run an assembler on individual clusters.\n* xtract; the eXperimental TRanscript\nAssembly/Consensus Tool.  The idea is to construct the splice graph\nfrom each EST cluster in the input, by first constructing and then\ntraversing the de Bruijn graph of \$k-1\$-words.";
        buildType = "Simple";
      };
      components = {
        exes = {
          xsact = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.random
              hsPkgs.array
              hsPkgs.unix
              hsPkgs.directory
              hsPkgs.process
            ];
          };
          xplit = {
            depends  = [ hsPkgs.base ];
          };
          xtract = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.array
              hsPkgs.containers
            ];
          };
        };
      };
    }