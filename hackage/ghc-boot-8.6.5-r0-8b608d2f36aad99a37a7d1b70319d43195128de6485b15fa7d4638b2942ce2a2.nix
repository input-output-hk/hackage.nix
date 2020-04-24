{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "ghc-boot"; version = "8.6.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghc-devs@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Shared functionality between GHC and its boot libraries";
      description = "This library is shared between GHC, @ghc-pkg@, and other boot\nlibraries.\n\nA note about \"GHC.PackageDb\": it only deals with the subset of\nthe package database that the compiler cares about: modules\npaths etc and not package metadata like description, authors\netc. It is thus not a library interface to @ghc-pkg@ and is __not__\nsuitable for modifying GHC package databases.\n\nThe package database format and this library are constructed in\nsuch a way that while @ghc-pkg@ depends on @Cabal@, the GHC library\nand program do not have to depend on @Cabal@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."ghc-boot-th" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot-th"))
          ];
        buildable = true;
        };
      };
    }