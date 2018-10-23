{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ruler-core";
        version = "1.0";
      };
      license = "LicenseRef-LGPL";
      copyright = "Arie Middelkoop";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "";
      description = "Ruler-core Attribute Grammar";
      buildType = "Custom";
    };
    components = {
      exes = {
        "ruler-core" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.uulib)
            (hsPkgs.uuagc)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.fgl)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }