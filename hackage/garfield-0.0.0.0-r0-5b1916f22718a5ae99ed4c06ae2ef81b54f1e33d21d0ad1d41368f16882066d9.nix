{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "garfield"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/garfield";
      url = "";
      synopsis = "TBA";
      description = "";
      buildType = "Simple";
      };
    components = { "library" = {}; };
    }