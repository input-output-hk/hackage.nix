{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "conduit-merge"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Yuriy Syrovetskiy";
      maintainer = "cblp@cblp.su";
      author = "Yuriy Syrovetskiy";
      homepage = "https://github.com/cblp/conduit-merge#readme";
      url = "";
      synopsis = "Merge multiple sorted conduits";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }