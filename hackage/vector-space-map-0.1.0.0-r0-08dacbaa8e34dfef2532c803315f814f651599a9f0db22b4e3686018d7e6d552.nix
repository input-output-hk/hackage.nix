{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "vector-space-map"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "christian@conkle.org";
      author = "Christian Conkle";
      homepage = "https://github.com/conklech/vector-space-map";
      url = "";
      synopsis = "vector-space operations for finite maps using Data.Map";
      description = "Data.Map.Vector provides @MapVector@, a wrapper around @Map@ from @containers@ which supports constant maps, i.e. maps containing only one value.  This allows an identity under intersection and an @Applicative@ instance.  It also has instances of @AdditiveGroup@, @VectorSpace@, @InnerSpace@, and @Num@ with appropriate value types.  Provides operations for addition, subtraction, element-wise multiplication (through @Num@), scalar multiplication (through @VectorSpace@), and dot product.";
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
      };
    }