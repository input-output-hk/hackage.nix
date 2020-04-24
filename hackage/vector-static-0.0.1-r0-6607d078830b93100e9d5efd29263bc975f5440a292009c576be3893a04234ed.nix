{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "vector-static"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel Peebles 2010";
      maintainer = "Daniel Peebles <pumpkingod@gmail.com>";
      author = "Daniel Peebles <pumpkingod@gmail.com>";
      homepage = "http://github.com/pumpkin/vector-static";
      url = "";
      synopsis = "Statically checked sizes on Data.Vector";
      description = "Very unstable! Many interfaces are still incomplete or even empty.\nNat and Fin will be moving to a separate package eventually.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mmap" or ((hsPkgs.pkgs-errors).buildDepError "mmap"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      };
    }