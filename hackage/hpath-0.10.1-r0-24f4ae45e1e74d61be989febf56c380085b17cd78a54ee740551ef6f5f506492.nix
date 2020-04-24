{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "hpath"; version = "0.10.1"; };
      license = "BSD-3-Clause";
      copyright = "Julian Ospald 2016";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Julian Ospald <hasufell@posteo.de>";
      homepage = "";
      url = "";
      synopsis = "Support for well-typed paths";
      description = "Support for well-typed paths, utilizing ByteString under the hood.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."hpath-filepath" or ((hsPkgs.pkgs-errors).buildDepError "hpath-filepath"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."word8" or ((hsPkgs.pkgs-errors).buildDepError "word8"))
          ] ++ (pkgs.lib).optional (system.isWindows) (hsPkgs."unbuildable" or ((hsPkgs.pkgs-errors).buildDepError "unbuildable"));
        buildable = if system.isWindows then false else true;
        };
      };
    }