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
      specVersion = "1.8";
      identifier = {
        name = "unordered-containers";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2011 Johan Tibell";
      maintainer = "johan.tibell@gmail.com";
      author = "Johan Tibell <johan.tibell@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Efficient hashing-based container types";
      description = "Efficient hashing-based container types.  The containers have been\noptimized for performance critical use, both in terms of large data\nquantities and high speed.\n\nThe declared cost of each operation is either worst-case or\namortized, but remains valid even if structures are shared.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
        ];
      };
    };
  }