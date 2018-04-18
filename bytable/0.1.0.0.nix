{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "bytable";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
        homepage = "";
        url = "";
        synopsis = "data from/to ByteString";
        description = "You can read data from ByteString.\n\n> some = do\n>     x <- take 4\n>     y <- take 8\n>     return (x :: Int, y :: Integer)\n";
        buildType = "Simple";
      };
      components = {
        bytable = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.word24
          ];
        };
      };
    }