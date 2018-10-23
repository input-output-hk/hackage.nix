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
        name = "uuagc-cabal";
        version = "1.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "Software Technology at Universiteit Utrecht";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Cabal plugin for the Universiteit Utrecht Attribute Grammar System";
      description = "Cabal plugin for UUAGC";
      buildType = "Simple";
    };
    components = {
      "uuagc-cabal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.uulib)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
        ];
      };
    };
  }