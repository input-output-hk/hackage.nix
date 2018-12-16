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
      specVersion = "1.6";
      identifier = {
        name = "haskelldb";
        version = "2.2.4";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "\"Justin Bailey\" <jgbailey@gmail.com>";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw, Justin Bailey";
      homepage = "https://github.com/m4dc4p/haskelldb";
      url = "";
      synopsis = "A library of combinators for generating and executing SQL statements.";
      description = "This library allows you to build SQL SELECT, INSERT, UPDATE, and DELETE\nstatements using operations based on the relational algebra.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.mtl)
          (hsPkgs.base)
          (hsPkgs.pretty)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.time)
        ];
      };
    };
  }