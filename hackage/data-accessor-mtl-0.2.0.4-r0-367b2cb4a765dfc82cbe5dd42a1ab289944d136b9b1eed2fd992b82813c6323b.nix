{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "data-accessor-mtl"; version = "0.2.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Record_access";
      url = "";
      synopsis = "Use Accessor to access state in mtl State monad class";
      description = "Use Accessor to access state in mtl State monad class";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }