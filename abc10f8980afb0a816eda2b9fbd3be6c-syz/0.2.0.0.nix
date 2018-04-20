{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base4 = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "syz";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Michael D. Adams";
        maintainer = "adamsmd-AT-cs.indiana.edu";
        author = "Michael D. Adams";
        homepage = "http://www.cs.indiana.edu/~adamsmd/papers/scrap_your_zippers/";
        url = "";
        synopsis = "Scrap Your Zippers";
        description = "This package contains the generic zipper system described\nin the Scrap Your Zippers paper\n(see <http://www.cs.indiana.edu/~adamsmd/papers/scrap_your_zippers/>).\nIt defines the @Zipper@ type permitting zipper traversals\nover arbitrary instances of @Data@.";
        buildType = "Simple";
      };
      components = {
        syz = {
          depends  = if _flags.base4
            then [ hsPkgs.base hsPkgs.syb ]
            else [ hsPkgs.base ];
        };
      };
    }