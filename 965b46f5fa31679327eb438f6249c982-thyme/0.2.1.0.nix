{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      bug-for-bug = true;
      instance-num = true;
      show-internal = false;
      werror = false;
      utf8-string = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "thyme";
        version = "0.2.1.0";
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
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.old-locale)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vector-space)
        ] ++ (if _flags.utf8-string
          then [
            (hsPkgs.bytestring)
            (hsPkgs.utf8-string)
          ]
          else [ (hsPkgs.bytestring) ]);
      };
      tests = {
        "sanity" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.lens)
            (hsPkgs.old-locale)
            (hsPkgs.random)
            (hsPkgs.thyme)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector-space)
          ] ++ pkgs.lib.optional (_flags.utf8-string) (hsPkgs.utf8-string);
        };
      };
    };
  }