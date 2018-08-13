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
      specVersion = "1.10";
      identifier = {
        name = "control-dotdotdot";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eric.brisco@gmail.com";
      author = "Eric Brisco";
      homepage = "https://github.com/erisco/control-dotdotdot";
      url = "";
      synopsis = "Haskell operator\n`g ... f = \\x1 .. xn -> g (f x1 .. xn)`.";
      description = "Haskell operator\n`g ... f = \\x1 .. xn -> g (f x1 .. xn)`.\nCompose functions such that all arguments are\napplied. Obviates `(.).(.)` and similar patterns in\nsome cases.";
      buildType = "Simple";
    };
    components = {
      "control-dotdotdot" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }