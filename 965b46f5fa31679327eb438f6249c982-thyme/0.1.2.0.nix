{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      instance-num = true;
      bug-for-bug = true;
      show-internal = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "thyme";
        version = "0.1.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "© 2013 Liyang HU";
      maintainer = "thyme@liyang.hu";
      author = "Liyang HU, Ashley Yakeley";
      homepage = "https://github.com/liyang/thyme";
      url = "";
      synopsis = "A faster time library";
      description = "A faster time library";
      buildType = "Simple";
    };
    components = {
      "thyme" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.deepseq)
          (hsPkgs.vector-space)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.time)
        ];
      };
      tests = {
        "sanity" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.deepseq)
            (hsPkgs.vector-space)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.random)
            (hsPkgs.QuickCheck)
            (hsPkgs.criterion)
            (hsPkgs.thyme)
            (hsPkgs.time)
          ];
        };
      };
    };
  }