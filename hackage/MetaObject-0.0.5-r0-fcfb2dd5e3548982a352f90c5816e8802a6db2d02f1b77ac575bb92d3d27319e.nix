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
      specVersion = "0";
      identifier = {
        name = "MetaObject";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "2006 Caio Marcelo, 2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "A meta-object system for Haskell based on Perl 6";
      description = "A meta-object system for Haskell based on Perl 6";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.stringtable-atom)
        ];
      };
    };
  }