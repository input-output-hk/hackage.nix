{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "once";
        version = "0.2";
      };
      license = "GPL-3.0-only";
      copyright = "2015,2016 Dmitry Bogatov";
      maintainer = "KAction@gnu.org";
      author = "Dmitry Bogatov";
      homepage = "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-once.git";
      url = "";
      synopsis = "memoization for IO actions and functions";
      description = "Please see Control.Once for examples";
      buildType = "Simple";
    };
    components = {
      "once" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }