{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "memo-sqlite";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "https://gitorious.org/memo-sqlite";
      url = "";
      synopsis = "memoize functions using SQLite3 database";
      description = "";
      buildType = "Simple";
    };
    components = {
      "memo-sqlite" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.direct-sqlite)
        ];
      };
    };
  }