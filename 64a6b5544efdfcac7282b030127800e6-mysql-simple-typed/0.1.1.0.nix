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
        name = "mysql-simple-typed";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/mysql-simple-typed";
      url = "";
      synopsis = "Typed extension to mysql simple";
      description = "";
      buildType = "Simple";
    };
    components = {
      "mysql-simple-typed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mysql)
          (hsPkgs.mysql-simple)
          (hsPkgs.typedquery)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }