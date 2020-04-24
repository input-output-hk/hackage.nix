{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3.0";
      identifier = { name = "interleavableGen"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2008 Marco Túlio Gontijo e Silva <marcot@riseup.net>";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@riseup.net>";
      author = "Marco Túlio Gontijo e Silva";
      homepage = "";
      url = "";
      synopsis = "Generates a version of a module using InterleavableIO";
      description = "This program generates a version of a module that uses IO a functions, with\nMonadIO m => m a when the function returns IO, or InterleavableIO m => m a\nwhen an IO a function is passed as a callback.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "interleavableGen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }