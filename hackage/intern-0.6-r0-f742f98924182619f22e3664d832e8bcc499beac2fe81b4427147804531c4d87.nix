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
        name = "intern";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/intern/";
      url = "";
      synopsis = "Efficient hash-consing for arbitrary data types";
      description = "Efficient hash-consing for arbitrary data types\n\nChanges from 0.5.2 to 0.6\n\n* Widened the caches so they don't go through a single MVar per type. This has made a dramatic impact on performance. However, this broke the previous invariant that newer entries always had higher Ids than older entries.\n\nChanges from 0.5.1 to 0.5.2\n\n* Added Data.Interned.IntSet";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.hashable)
          (hsPkgs.unordered-containers)
          (hsPkgs.array)
        ];
      };
    };
  }