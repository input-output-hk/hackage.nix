{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "phone-numbers"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christian Marie <christian@ponies.io>";
      author = "Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/christian-marie/phone-numbers";
      url = "";
      synopsis = "Haskell bindings to the libphonenumber library";
      description = "Basic phone number parsing, largely incomplete, please submit a pull\nrequest or issue if you'd like more exposed.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        libs = [
          (pkgs."phonenumber" or ((hsPkgs.pkgs-errors).sysDepError "phonenumber"))
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      };
    }