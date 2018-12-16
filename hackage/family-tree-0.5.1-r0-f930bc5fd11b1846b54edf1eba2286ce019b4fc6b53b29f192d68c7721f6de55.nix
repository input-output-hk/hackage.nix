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
        name = "family-tree";
        version = "0.5.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nvd1234@gmail.com";
      author = "Nathan \"Taneb\" van Doorn";
      homepage = "https://github.com/Taneb/family-tree";
      url = "https://github.com/Taneb/family-tree";
      synopsis = "A family tree library for the Haskell programming language.";
      description = "A family tree library for the Haskell programming language.\nUses \"Control.Lens\" for modification and \"Data.Binary\" for\nserialization.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.binary)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.intervals)
          (hsPkgs.tables)
          (hsPkgs.hashable)
        ];
      };
    };
  }