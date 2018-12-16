{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      bug-for-bug = true;
      instance-num = true;
      show-internal = false;
      werror = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "thyme";
        version = "0.2.0.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
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
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.vector-space)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
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