{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "reactive-glut"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Conal Elliott";
      maintainer = "conal@conal.net";
      author = "Conal Elliott";
      homepage = "http://haskell.org/haskellwiki/reactive-glut";
      url = "http://code.haskell.org/reactive-glut";
      synopsis = "Connects Reactive and GLUT";
      description = "This package contains an adapter that connects OpenGL/GLUT to the\nFRP library \\\"Reactive\\\".\n\nProject wiki page: <http://haskell.org/haskellwiki/reactive-glut>\n\nThe module documentation pages have links to colorized source code and\nto wiki pages where you can read and contribute user comments.  Enjoy!\n\n&#169; 2008 by Conal Elliott; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."reactive" or ((hsPkgs.pkgs-errors).buildDepError "reactive"))
          ];
        buildable = true;
        };
      };
    }