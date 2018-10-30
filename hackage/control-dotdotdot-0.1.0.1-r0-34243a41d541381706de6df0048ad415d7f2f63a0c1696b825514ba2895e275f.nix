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
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }