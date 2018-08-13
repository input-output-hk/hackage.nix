{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      split-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "haskelldb-hdbc";
        version = "0.12";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "haskelldb-users@lists.sourceforge.net";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "HaskellDB support for HDBC. You will also need one\nor more back-end specific packages.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haskelldb-hdbc" = {
        depends  = [
          (hsPkgs.mtl)
          (hsPkgs.haskelldb)
          (hsPkgs.HDBC)
          (hsPkgs.convertible)
        ] ++ (if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.old-time)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }