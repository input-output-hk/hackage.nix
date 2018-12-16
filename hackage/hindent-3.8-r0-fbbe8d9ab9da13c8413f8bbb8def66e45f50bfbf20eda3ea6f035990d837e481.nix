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
      specVersion = "1.8";
      identifier = {
        name = "hindent";
        version = "3.8";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Extensible Haskell pretty printer";
      description = "Extensible Haskell pretty printer. Both a library and an executable.\n\nSee the Github page for usage\\/explanation: <https://github.com/chrisdone/hindent>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hindent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hindent)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hindent)
            (hsPkgs.data-default)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.monad-loops)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.hspec)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }