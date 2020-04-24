{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haspell"; version = "1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "joel@otte.rs";
      author = "Joel Taylor";
      homepage = "https://github.com/otters/haspell";
      url = "";
      synopsis = "Haskell bindings to aspell";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [
          (pkgs."aspell" or ((hsPkgs.pkgs-errors).sysDepError "aspell"))
          ];
        buildable = true;
        };
      };
    }