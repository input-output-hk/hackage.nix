{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "wheb-mongo"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hanooter@gmail.com";
      author = "Kyle Hanson";
      homepage = "https://github.com/hansonkd/Wheb-Framework";
      url = "";
      synopsis = "MongoDB plugin for Wheb";
      description = "Wheb plugin for MongoDB.\n\n* Implements SessionBackend and AuthBackend instances using Mongo.\n\n* Creates simple interface for arbitrary MongoDB actions using <http://hackage.haskell.org/package/mongoDB mongoDB>\n\nFor a complete example, see the examples folder at <https://github.com/hansonkd/Wheb-Framework/tree/master/examples github>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mongoDB" or ((hsPkgs.pkgs-errors).buildDepError "mongoDB"))
          (hsPkgs."Wheb" or ((hsPkgs.pkgs-errors).buildDepError "Wheb"))
          (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }