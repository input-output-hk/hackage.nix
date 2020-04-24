{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.23";
      identifier = { name = "criu-rpc-types"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "wayofthepie@gmail.com";
      author = "wayofthepie";
      homepage = "https://github.com/wayofthepie/haskell-criu-rpc-types";
      url = "";
      synopsis = "Criu RPC protocol buffer types.";
      description = "Types and lenses for the CRIU RPC API generated using proto-lens.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.proto-lens-protoc or (pkgs.buildPackages.proto-lens-protoc or ((hsPkgs.pkgs-errors).buildToolDepError "proto-lens-protoc")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."proto-lens-protoc" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-protoc"))
          ];
        buildable = true;
        };
      };
    }