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
        name = "prettyFunctionComposing";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nick.rudnick@gmail.com";
      author = "Nick Rudnick";
      homepage = "";
      url = "";
      synopsis = "prettier function composition by (°)";
      description = "Yes, I am afraid it is completely trivial and syntactic.\nHowever, the use of '.' is quite overloaded, so that e.g.\ncharacter search becomes a problem. Pretty looking &\ngenerally available at the keyboard, '°' solves this.\nPossibly the most simple Hackage package ever. :-P";
      buildType = "Simple";
    };
    components = {
      "prettyFunctionComposing" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }