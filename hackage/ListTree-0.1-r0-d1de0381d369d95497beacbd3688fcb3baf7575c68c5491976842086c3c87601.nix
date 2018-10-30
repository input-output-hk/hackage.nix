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
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yairchu@gmail.com";
      author = "Yair Chuchem";
      homepage = "http://github.com/yairchu/generator/tree";
      url = "";
      synopsis = "Combinatoric search using ListT";
      description = "Searching and pruning\ntrees expressed as 'List's whose underlying monad\nis also a List.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.List)
          (hsPkgs.mtl)
        ];
      };
    };
  }