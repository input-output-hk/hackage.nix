{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "chessIO"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Mario Lang";
      maintainer = "mlang@blind.guru";
      author = "Mario Lang";
      homepage = "https://github.com/mlang/chessIO#readme";
      url = "";
      synopsis = "";
      description = "A simple chess move generation library";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.vector) ]; };
      tests = {
        "perft" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.chessIO)
            (hsPkgs.directory)
            (hsPkgs.parallel)
            (hsPkgs.time)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }