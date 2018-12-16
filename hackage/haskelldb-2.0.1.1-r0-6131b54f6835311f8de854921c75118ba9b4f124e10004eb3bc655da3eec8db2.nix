{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskelldb";
        version = "2.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "\"Justin Bailey\" <jgbailey@gmail.com>";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw, Justin Bailey";
      homepage = "http://trac.haskell.org/haskelldb";
      url = "";
      synopsis = "A library of combinators for generating and executing SQL statements.";
      description = "";
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
        ];
      };
    };
  }