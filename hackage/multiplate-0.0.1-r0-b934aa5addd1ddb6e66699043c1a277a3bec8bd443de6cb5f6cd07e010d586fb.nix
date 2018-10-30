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
      specVersion = "1.4";
      identifier = {
        name = "multiplate";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "2010, Russell O'Connor";
      maintainer = "Russell O'Connor <roconnor@theorem.ca>";
      author = "Russell O'Connor";
      homepage = "http://haskell.org/haskellwiki/Multiplate";
      url = "";
      synopsis = "Lightweight generic library for mutually recursive data types.";
      description = "Multiplate is an alternative extension of the Uniplate/Compos core library\nto support mutally recursive\ndatatypes in a way that is as powerful as Compos, as easy to use as Biplate, and\nmore portable than both of them.\nMultiplate does not require GADTs and does not require multi-parameter type classes.\nIt only requires rank 3 polymorphism.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
    };
  }