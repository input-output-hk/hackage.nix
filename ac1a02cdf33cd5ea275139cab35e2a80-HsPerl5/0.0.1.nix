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
      specVersion = "0";
      identifier = {
        name = "HsPerl5";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to embedded Perl 5 interpreter";
      description = "Haskell interface to embedded Perl 5 interpreter";
      buildType = "Simple";
    };
    components = {
      "HsPerl5" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }