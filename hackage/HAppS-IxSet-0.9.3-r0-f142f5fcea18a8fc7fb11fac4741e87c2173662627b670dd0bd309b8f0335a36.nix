{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HAppS-IxSet";
        version = "0.9.3";
      };
      license = "BSD-3-Clause";
      copyright = "2007 HAppS LLC";
      maintainer = "AlexJacobson@HAppS.org";
      author = "Alex Jacobson, Einar Karttunen";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Web framework";
      buildType = "Simple";
    };
    components = {
      "HAppS-IxSet" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.hslogger)
          (hsPkgs.HAppS-Util)
          (hsPkgs.HAppS-State)
          (hsPkgs.HAppS-Data)
          (hsPkgs.template-haskell)
          (hsPkgs.syb-with-class)
          (hsPkgs.containers)
        ] ++ (if flags.base4
          then [
            (hsPkgs.base)
            (hsPkgs.syb)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }