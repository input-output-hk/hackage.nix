{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "usb-iteratee"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "2011 Bas van Dijk <v.dijk.bas@gmail.com>";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/basvandijk/usb-iteratee/";
      url = "";
      synopsis = "Iteratee enumerators for the usb package";
      description = "This packages provides @iteratee@ enumerators for the @usb@ package.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."bindings-libusb" or ((hsPkgs.pkgs-errors).buildDepError "bindings-libusb"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."usb" or ((hsPkgs.pkgs-errors).buildDepError "usb"))
          ];
        buildable = true;
        };
      };
    }