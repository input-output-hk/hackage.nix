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
        name = "haskelldb";
        version = "0.13";
      };
      license = "BSD-3-Clause";
      copyright = "The authors";
      maintainer = "\"Justin Bailey\" <jgbailey@gmail.com>";
      author = "Daan Leijen, Conny Andersson, Martin Andersson, Mary Bergman, Victor Blomqvist, Bjorn Bringert, Anders Hockersten, Torbjorn Martin, Jeremy Shaw";
      homepage = "http://haskelldb.sourceforge.net";
      url = "";
      synopsis = "SQL unwrapper for Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "haskelldb" = {
        depends  = [
          (hsPkgs.mtl)
        ] ++ (if _flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.pretty)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            (hsPkgs.directory)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }