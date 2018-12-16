{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lojbanXiragan";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      author = ".iocikun.juj. <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "lojban to xiragan";
      description = "xiragan -e coi rodo -> 「しょユ るぉど」\n\nxiragan -e ti ginka -> 「てぃ ぎんか」\n\nxiragan -e \".o'i mu xagji sofybakni cu zvati le purdi\" ->\n「っおひ む はぁグじ そフゥぅばクに しゅ ズう\"ぁてぃ れ ぷルゥでぃ」";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      exes = {
        "xiragan" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lojbanXiragan)
          ];
        };
      };
    };
  }