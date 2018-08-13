{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "zot";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "Zot language";
      description = "Zot language (<http://semarch.linguistics.fas.nyu.edu/barker/Iota/zot.html>)\n\n> echo \"10100\" | cat examples/reverse.zot - | zot -\n> 00101\n\n> cat examples/reverse.lambda | zot lambdaToSki | zot skiToZot | zot arg \"10100\" | zot -\n> 00101\n\nAnd try\n\n> cat examples/reverse.zot | zot zotToSki | zot skiToLambda\n\nand\n\n> cat examples/reverse.zot | zot zotToSki | zot skiToLambda -h";
      buildType = "Simple";
    };
    components = {
      exes = {
        "zot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.monads-tf)
          ];
        };
      };
    };
  }