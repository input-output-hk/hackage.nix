{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "flexible-defaults"; version = "0.0.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "James Cook <mokus@deepbondi.net>";
      author = "James Cook <mokus@deepbondi.net>";
      homepage = "https://github.com/mokus0/flexible-defaults";
      url = "";
      synopsis = "Generate default function implementations for complex type classes.";
      description = "Template Haskell code to implement default implementations\nfor type-class functions based on which functions are\nalready implemented.  Currently extremely crude but\nstill fairly effective.\n\nWhen defining a type class with many functions, each\nof which can be implemented based on arbitrary subsets\nof the others, the standard default-implementation\nconcept breaks down quite badly.  This library provides\na system by which more complex rules can be described\nfor choosing default implementations based on which\nones the user supplies.  These implementations can\nadditionally be given \\\"suitability scores\\\", so that\nwhen multiple possible choices could be made, the\nlibrary can choose the \\\"best\\\" one.\n\nChanges in v0.0.0.2:  Nothing at all except setting\n'buildable: False' under GHC 7.2.1.\nTechnically it builds on 7.2.1, but it doesn't actually generate\ncorrect code due to http://hackage.haskell.org/trac/ghc/ticket/5410\nwhich has been patched and will almost certainly be fixed in the next\nGHC release.  AFAIK 7.2.1 is the only release where this bug actually\ncaused problems.  I'm sure it could be worked around, but it's a\nwhole lot easier to just say \"wait for 7.2.2/7.4\".  If anyone\ndesperately needs this package under 7.2.1, let me know and I'll\nsee what I can do.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = if compiler.isGhc && (compiler.version).eq "7.2.1"
          then false
          else true;
        };
      };
    }