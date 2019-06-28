{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "std"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/chessai/std";
      url = "";
      synopsis = "TBA";
      description = "";
      buildType = "Simple";
      };
    components = { "library" = {}; };
    }