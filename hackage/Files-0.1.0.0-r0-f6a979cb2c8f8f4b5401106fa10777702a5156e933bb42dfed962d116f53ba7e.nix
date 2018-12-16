{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Files";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2016 Yuhang(Steven) Wang";
      maintainer = "stevenyhw.project@gmail.com";
      author = "Yuhang(Steven) Wang";
      homepage = "https://github.com/githubuser/Files#readme";
      url = "";
      synopsis = "File content extraction/rearrangement";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      exes = {
        "Files" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Files)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Files)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }