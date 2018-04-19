{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "symbol";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2006-2011 Harvard University\n(c) 2011-2014 Geoffrey Mainland";
        maintainer = "mainland@cs.drexel.edu";
        author = "Geoffrey Mainland <mainland@cs.drexel.edu>";
        homepage = "http://www.cs.drexel.edu/~mainland/";
        url = "";
        synopsis = "A 'Symbol' type for fast symbol comparison.";
        description = "Provides a 'Symbol' data type allowing fast symbol comparisons\nand functions for interning symbols and recovering their\n'String' representation.";
        buildType = "Simple";
      };
      components = {
        symbol = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.syb
          ];
        };
      };
    }