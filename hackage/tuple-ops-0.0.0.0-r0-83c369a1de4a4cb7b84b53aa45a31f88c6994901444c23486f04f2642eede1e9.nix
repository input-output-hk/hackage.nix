{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "tuple-ops"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jiasen Wu <jiasenwu@hotmail.com>";
      author = "Jiasen Wu";
      homepage = "https://github.com/pierric/tuple-ops";
      url = "";
      synopsis = "various operations on n-ary tuples via GHC.Generics";
      description = "Uncons operation on n-ary tuples";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }