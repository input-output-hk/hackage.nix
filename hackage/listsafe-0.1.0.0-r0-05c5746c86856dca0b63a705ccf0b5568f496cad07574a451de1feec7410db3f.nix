{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "listsafe";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "janos.tapolczai@gmail.com";
      author = "Janos Tapolczai";
      homepage = "https://github.com/ombocomp/listsafe";
      url = "";
      synopsis = "Safe wrappers for partial list functions, supporting MonadThrow.";
      description = "Data.List includes a handful of partial functions that throw\nuncatchable exceptions when given empty lists. This package\nprovides safe alternatives for such functions based on\nMonadThrow which can provide a variety of failure\ncases: Nothing, IOException, Left, etc.";
      buildType = "Simple";
    };
    components = {
      "listsafe" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.exceptions)
        ];
      };
    };
  }