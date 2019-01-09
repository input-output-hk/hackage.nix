{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lojysamban"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "Prolog with lojban";
      description = "Prolog with lojban";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lojysamban" = { depends = [ (hsPkgs.base) (hsPkgs.lojbanParser) ]; };
        };
      };
    }