{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "opencog-atomspace"; version = "0.1.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "-";
      author = "Marcos Pividori";
      homepage = "github.com/opencog/atomspace/tree/master/opencog/haskell";
      url = "";
      synopsis = "Haskell Bindings for the AtomSpace.";
      description = "This library defines Haskell Bindings for the AtomSpace.\n\nFor more information on Haskell Bindings:\n<http://wiki.opencog.org/w/Haskell>\n\nGitHub repository:\n<https://github.com/opencog/atomspace/tree/master/opencog/haskell>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        libs = [
          (pkgs."atomspace-cwrapper" or ((hsPkgs.pkgs-errors).sysDepError "atomspace-cwrapper"))
          ];
        buildable = true;
        };
      };
    }