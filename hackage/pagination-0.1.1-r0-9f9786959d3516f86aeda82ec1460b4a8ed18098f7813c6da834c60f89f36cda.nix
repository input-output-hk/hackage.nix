{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pagination";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
      author = "Mark Karpov <markkarpov@openmailbox.org>";
      homepage = "https://github.com/mrkkrp/pagination";
      url = "";
      synopsis = "Framework-agnostic pagination boilerplate";
      description = "Framework-agnostic pagination boilerplate.";
      buildType = "Simple";
    };
    components = {
      "pagination" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.pagination)
          ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs.semigroups);
        };
      };
    };
  }