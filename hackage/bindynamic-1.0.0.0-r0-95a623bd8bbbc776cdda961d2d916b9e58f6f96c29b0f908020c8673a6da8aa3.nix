{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bindynamic"; version = "1.0.0.0"; };
      license = "GPL-3.0-only";
      copyright = "Lennart Spitzner, 2015";
      maintainer = "Lennart Spitzner <lsp@informatik.uni-kiel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/bindynamic";
      url = "";
      synopsis = "A variation of Data.Dynamic.Dynamic with a Binary instance";
      description = "This Dynamic is instance Binary by encapsulating only\nvalues of types that are Binary. It is a bit more\nefficient than something similar to (ByteString, TypeRep)\nas it avoids unnecessary encode/decoding round-trips.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."rank1dynamic" or ((hsPkgs.pkgs-errors).buildDepError "rank1dynamic"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }