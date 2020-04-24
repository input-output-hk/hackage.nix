{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "nitro"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "edahlgren@bu.mp";
      author = "Erin Dahlgren";
      homepage = "<https://github.com/bumptech/nitro-haskell>";
      url = "";
      synopsis = "Haskell bindings for Nitro";
      description = "Nitro is a secure message-passing network applications library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."nitro" or ((hsPkgs.pkgs-errors).sysDepError "nitro"))
          (pkgs."nitronacl" or ((hsPkgs.pkgs-errors).sysDepError "nitronacl"))
          (pkgs."ev" or ((hsPkgs.pkgs-errors).sysDepError "ev"))
          (pkgs."pthread" or ((hsPkgs.pkgs-errors).sysDepError "pthread"))
          ];
        buildable = true;
        };
      };
    }