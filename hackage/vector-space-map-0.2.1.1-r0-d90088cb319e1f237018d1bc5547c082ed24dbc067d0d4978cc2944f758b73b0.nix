{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "vector-space-map"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "christian@conkle.org";
      author = "Christian Conkle";
      homepage = "https://github.com/conklech/vector-space-map";
      url = "";
      synopsis = "vector-space operations for finite maps using Data.Map";
      description = "Data.Map.Vector provides @MapVector@, a wrapper around @Map@ from @containers@ which supports constant maps, i.e. maps containing only one value.  This allows an identity under intersection and an @Applicative@ instance.  It also has instances of @AdditiveGroup@, @VectorSpace@, @InnerSpace@, and @HasBasis@ with appropriate value types.  Provides operations for addition, subtraction, element-wise operations (through @Applicative@), scalar multiplication (through @VectorSpace@), and dot product.  Also consider Conal Elliott's @total-map@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."vector-space" or ((hsPkgs.pkgs-errors).buildDepError "vector-space"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }