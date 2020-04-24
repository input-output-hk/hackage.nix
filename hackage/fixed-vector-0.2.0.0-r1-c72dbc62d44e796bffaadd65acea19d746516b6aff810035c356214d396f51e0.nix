{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fixed-vector"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Aleksey Khudyakov <alexey.skladnoy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Generic vectors with fixed length";
      description = "Generic vectors with fixed length. Package is structured as follows:\n\n[@Data.Vector.Fixed@]\nGeneric API. It's suitable for both ADT-based vector like @Complex@\nand array-based ones.\n\n[@Data.Vector.Fixed.Cont@]\nContinuation based vectors.\n\n[@Data.Vector.Fixed.Mutable@]\nType classes for array-based implementation.\n\n[@Data.Vector.Fixed.Unboxed@]\nUnboxed vectors.\n\n[@Data.Vector.Fixed.Boxed@]\nBoxed vector which can hold elements of any type.\n\n[@Data.Vector.Fixed.Storable@]\nUnboxed vectors of @Storable@  types.\n\n[@Data.Vector.Fixed.Primitive@]\nUnboxed vectors based on pritimive package.\n\nChanges in 0.2.0.0\n\n* Continuation-based vector added.\n\n* Right fold added.\n\n* @tailWith@, @convertContinuation@, and @!@ from\n@Data.Vector.Fixed@ removed.\n\n* @Vector@ instance for tuples added.\n\nChanges in 0.1.2\n\n* @imap@, @imapM@, @ifoldl@, @ifoldM@, @zipWithM@, @izipWithM@\nfunctions are added.\n\n* @VectorN@ type class added.\n\nChanges in 0.1.1\n\n* @foldM@ and @tailWith@ added. Type synonyms for numbers up to 6 are\nadded. @Fun@ is reexported from @Data.Vector.Fixed@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            ];
          buildable = true;
          };
        };
      };
    }