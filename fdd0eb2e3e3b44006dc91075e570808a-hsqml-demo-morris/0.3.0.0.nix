{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hsqml-demo-morris";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012-2014 Robin KAY";
        maintainer = "komadori@gekkou.co.uk";
        author = "Robin KAY";
        homepage = "http://www.gekkou.co.uk/software/hsqml/";
        url = "";
        synopsis = "HsQML-based implementation of Nine Men's Morris";
        description = "HsQML-based implementation of Nine Men's Morris";
        buildType = "Simple";
      };
      components = {
        exes = {
          hsqml-morris = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.text
              hsPkgs.tagged
              hsPkgs.OddWord
              hsPkgs.hsqml
            ];
          };
        };
      };
    }