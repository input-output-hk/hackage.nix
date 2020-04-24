{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "data-elf"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016 Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      maintainer = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      author = "Mikhail Vorozhtsov <mikhail.vorozhtsov@gmail.com>";
      homepage = "https://github.com/mvv/data-elf";
      url = "";
      synopsis = "Executable and Linkable Format (ELF) data structures.";
      description = "This package provides Executable and Linkable Format (ELF) data structures.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."data-endian" or ((hsPkgs.pkgs-errors).buildDepError "data-endian"))
          (hsPkgs."data-sword" or ((hsPkgs.pkgs-errors).buildDepError "data-sword"))
          (hsPkgs."data-flags" or ((hsPkgs.pkgs-errors).buildDepError "data-flags"))
          (hsPkgs."text-latin1" or ((hsPkgs.pkgs-errors).buildDepError "text-latin1"))
          ];
        buildable = true;
        };
      };
    }