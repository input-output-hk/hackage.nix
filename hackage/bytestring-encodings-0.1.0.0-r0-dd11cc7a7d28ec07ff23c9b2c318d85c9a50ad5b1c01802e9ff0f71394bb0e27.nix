{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev-wall-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-encodings"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "chessai (c) 2018";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "";
      url = "";
      synopsis = "checks to see if a given bytestring adheres to a certain encoding";
      description = "'Data.ByteString.X' modules provide simple, efficient function 'isX :: ByteString -> Bool'\nwhich returns 'True' if a given ByteString adheres to a certain encoding X,\nand 'False' otherwise.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-encodings" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-encodings"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "microbenchmark" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."bytestring-encodings" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-encodings"))
            (hsPkgs."gauge" or ((hsPkgs.pkgs-errors).buildDepError "gauge"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }