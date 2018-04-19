{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Xorshift128Plus";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "Kanai Hiroki <kanai.hiroki12@gmail.com>";
        author = "Kanai Hiroki <kanai.hiroki12@gmail.com>";
        homepage = "https://github.com/kanaihiroki/Xorshift128Plus";
        url = "";
        synopsis = "Pure haskell implementation of xorshift128plus random number generator.";
        description = "This package contains pure haskell implementation of\nxorshift128+ random number generator which is extremely fast.\n\nThe random number generator's inner state is just 128bit memory block\nso that which is not encapusulated for simplicity.\n\nPlease see <http://xorshift.di.unimi.it/xorshift128plus.c original C implementation>\nand <http://xorshift.di.unimi.it/ comparison of otther algorithms>.";
        buildType = "Simple";
      };
      components = {
        Xorshift128Plus = {
          depends  = [ hsPkgs.base ];
        };
      };
    }