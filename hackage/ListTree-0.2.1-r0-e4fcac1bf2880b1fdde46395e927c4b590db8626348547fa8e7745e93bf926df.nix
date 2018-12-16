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
      specVersion = "1.2";
      identifier = {
        name = "ListTree";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Yair Chuchem";
      homepage = "http://github.com/yairchu/generator/tree";
      url = "";
      synopsis = "Trees and monadic trees expressed as monadic lists where the underlying monad is a list";
      description = "Directory tree structure expressed as a monadic tree.\nSearching, pruning, iterating, and processing trees.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.transformers)
          (hsPkgs.List)
        ];
      };
    };
  }