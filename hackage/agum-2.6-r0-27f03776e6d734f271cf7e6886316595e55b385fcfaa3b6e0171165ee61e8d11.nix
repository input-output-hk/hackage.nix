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
      specVersion = "1.6";
      identifier = {
        name = "agum";
        version = "2.6";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ramsdell@mitre.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Unification and Matching in an Abelian Group";
      description = "The unification problem is given the problem\nstatement t =? t\\', find a most general\nsubstitution s such that s(t) = s(t\\') modulo\nthe axioms of an Abelian group.  The matching\nproblem is to find a most general substitution\ns such that s(t) = t\\' modulo the axioms.\nSubstitition s is more general than s\\' if\nthere is a substitition s\\\" such that s\\' =\ns\\\" o s.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "agum" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }