{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      separatesyb = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "pointful";
        version = "1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mikhail Glushenkov <mikhail.glushenkov@gmail.com>";
      author = "Thomas Jäger";
      homepage = "http://github.com/23Skidoo/pointful";
      url = "";
      synopsis = "Pointful refactoring tool";
      description = "Stand-alone command-line version of the pointful plugin\nfor Lambdabot.";
      buildType = "Simple";
    };
    components = {
      "pointful" = {
        depends  = [
          (hsPkgs.containers)
          (hsPkgs.haskell-src)
          (hsPkgs.mtl)
        ] ++ (if _flags.separatesyb
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
      exes = {
        "pointful" = {
          depends  = [
            (hsPkgs.containers)
            (hsPkgs.haskell-src)
            (hsPkgs.mtl)
          ] ++ (if _flags.separatesyb
            then [
              (hsPkgs.base)
              (hsPkgs.syb)
            ]
            else [ (hsPkgs.base) ]);
        };
      };
    };
  }