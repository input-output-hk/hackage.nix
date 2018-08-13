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
        name = "sqlite-simple-typed";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/sqlite-simple-typed";
      url = "";
      synopsis = "Typed extension to sqlite simple";
      description = "Simplifies Simple";
      buildType = "Simple";
    };
    components = {
      "sqlite-simple-typed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.sqlite)
          (hsPkgs.sqlite-simple)
          (hsPkgs.typedquery)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }