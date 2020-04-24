{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "reactive-fieldtrip"; version = "0.0.8"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/reactive-fieldtrip";
      url = "http://code.haskell.org/reactive-fieldtrip";
      synopsis = "Connect Reactive and FieldTrip";
      description = "This library supports functionally programming reactive, animated, 3D\ngraphics.  It connects ''Reactive'' (a functional reactive programming\nlibrary) and ''FieldTrip'' (a functional 3D library).\n\nProject wiki page: <http://haskell.org/haskellwiki/reactive-fieldtrip>\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."reactive" or ((hsPkgs.pkgs-errors).buildDepError "reactive"))
          (hsPkgs."reactive-glut" or ((hsPkgs.pkgs-errors).buildDepError "reactive-glut"))
          (hsPkgs."FieldTrip" or ((hsPkgs.pkgs-errors).buildDepError "FieldTrip"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."InfixApplicative" or ((hsPkgs.pkgs-errors).buildDepError "InfixApplicative"))
          ];
        buildable = true;
        };
      };
    }