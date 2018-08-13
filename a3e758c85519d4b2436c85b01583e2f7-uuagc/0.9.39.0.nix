{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "uuagc";
        version = "0.9.39.0";
      };
      license = "BSD-3-Clause";
      copyright = "Universiteit Utrecht";
      maintainer = "Arie Middelkoop <ariem@cs.uu.nl>";
      author = "Software Technology at Universiteit Utrecht";
      homepage = "http://www.cs.uu.nl/wiki/HUT/WebHome";
      url = "";
      synopsis = "Attribute Grammar System of Universiteit Utrecht";
      description = "Generates Haskell files from an attribute grammar specification";
      buildType = "Custom";
    };
    components = {
      "uuagc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
        ];
      };
      exes = {
        "uuagc" = {
          depends  = [
            (hsPkgs.uuagc-bootstrap)
            (hsPkgs.uuagc-cabal)
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.ghc-prim)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.uulib)
            (hsPkgs.mtl)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }