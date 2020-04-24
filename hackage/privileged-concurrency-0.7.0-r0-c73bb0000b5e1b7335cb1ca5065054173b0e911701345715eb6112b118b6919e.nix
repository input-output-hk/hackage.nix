{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "privileged-concurrency"; version = "0.7.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan <omeragacan@gmail.com>";
      author = "Jeff Shaw, Ömer Sinan Ağacan";
      homepage = "";
      url = "";
      synopsis = "Provides privilege separated versions of the concurrency primitives.";
      description = "Any @MVar@ or other concurrency primitive can be read by or written to any\nfunction which recieves it as a value. This package provides read-only and\nwrite-only versions of @Chan@, @MVar@, @TChan@, @TMVar@, and @TVar@.\nFunctions which use these versions receive permission to read, write, or\nboth based on their type signatures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."unliftio-core" or ((hsPkgs.pkgs-errors).buildDepError "unliftio-core"))
          ];
        buildable = true;
        };
      };
    }