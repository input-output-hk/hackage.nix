{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "FieldTrip"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2008 by Conal Elliott and Andy Gill";
      maintainer = "conal@conal.net, andygill@ku.edu";
      author = "Conal Elliott and Andy Gill";
      homepage = "http://haskell.org/haskellwiki/FieldTrip";
      url = "http://code.haskell.org/FieldTrip";
      synopsis = "Functional 3D";
      description = "FieldTrip is a library for functional 3D geometry\n\nPlease see the project wiki page: <http://haskell.org/haskellwiki/FieldTrip>\n\n&#169; 2008 by Andy Gill and Conal Elliott; BSD3 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."OpenGL" or ((hsPkgs.pkgs-errors).buildDepError "OpenGL"))
          (hsPkgs."GLUT" or ((hsPkgs.pkgs-errors).buildDepError "GLUT"))
          (hsPkgs."TypeCompose" or ((hsPkgs.pkgs-errors).buildDepError "TypeCompose"))
          (hsPkgs."MemoTrie" or ((hsPkgs.pkgs-errors).buildDepError "MemoTrie"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          (hsPkgs."graphicsFormats" or ((hsPkgs.pkgs-errors).buildDepError "graphicsFormats"))
          ];
        buildable = true;
        };
      };
    }