{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "preliminaries"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2016 Yghor Kerscher";
      maintainer = "kerscher@acm.org";
      author = "Yghor Kerscher";
      homepage = "http://github.com/kerscher/preliminaries";
      url = "";
      synopsis = "A larger alternative to the Prelude.";
      description = "A GHC-only alternative to the Prelude with a large amount of imports available by default.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."classy-prelude-conduit" or ((hsPkgs.pkgs-errors).buildDepError "classy-prelude-conduit"))
          (hsPkgs."abstract-par" or ((hsPkgs.pkgs-errors).buildDepError "abstract-par"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."microlens-platform" or ((hsPkgs.pkgs-errors).buildDepError "microlens-platform"))
          (hsPkgs."microlens-contra" or ((hsPkgs.pkgs-errors).buildDepError "microlens-contra"))
          (hsPkgs."monad-par" or ((hsPkgs.pkgs-errors).buildDepError "monad-par"))
          (hsPkgs."monad-parallel" or ((hsPkgs.pkgs-errors).buildDepError "monad-parallel"))
          (hsPkgs."mono-traversable-instances" or ((hsPkgs.pkgs-errors).buildDepError "mono-traversable-instances"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."stm-conduit" or ((hsPkgs.pkgs-errors).buildDepError "stm-conduit"))
          ];
        buildable = true;
        };
      };
    }