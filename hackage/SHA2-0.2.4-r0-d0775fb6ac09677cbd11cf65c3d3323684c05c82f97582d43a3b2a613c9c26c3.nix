{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "SHA2"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 University of Tromsø";
      maintainer = "Svein Ove Aas <svein.ove@aas.no>";
      author = "Svein Ove Aas <svein.ove@aas.no>";
      homepage = "";
      url = "";
      synopsis = "Fast, incremental SHA hashing for bytestrings";
      description = "A zero-copy binding to Aaron Gifford's SHA implementation, including a copy of that implementation";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."monads-tf" or ((hsPkgs.pkgs-errors).buildDepError "monads-tf"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."AES" or ((hsPkgs.pkgs-errors).buildDepError "AES"))
          ];
        buildable = true;
        };
      };
    }