{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Control-Engine"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "http://www.haskell.org/haskellwiki/Control-Engine";
      url = "";
      synopsis = "A parallel producer/consumer engine (thread pool)";
      description = "A parallel producer/consumer engine (thread pool).  There are lots\nof features in the Engine, to include dynamically adjustable hooks,\nmanaged state, and injection points.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."BoundedChan" or ((hsPkgs.pkgs-errors).buildDepError "BoundedChan"))
          ];
        buildable = true;
        };
      };
    }