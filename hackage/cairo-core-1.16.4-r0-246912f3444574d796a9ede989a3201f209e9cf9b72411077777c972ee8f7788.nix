{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "cairo-core"; version = "1.16.4"; };
      license = "BSD-3-Clause";
      copyright = "None";
      maintainer = "magiclouds@gmail.com";
      author = "Magicloud";
      homepage = "https://github.com/magicloud/cairo-core#readme";
      url = "";
      synopsis = "Cairo Haskell binding (core functions)";
      description = "Cairo Haskell binding (core functions). Please checkout cairo-opts for other functions.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or ((hsPkgs.pkgs-errors).buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or ((hsPkgs.pkgs-errors).buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath or ((hsPkgs.pkgs-errors).buildToolDepError "filepath")))
        (hsPkgs.buildPackages.haskell-src-exts or (pkgs.buildPackages.haskell-src-exts or ((hsPkgs.pkgs-errors).buildToolDepError "haskell-src-exts")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or ((hsPkgs.pkgs-errors).buildToolDepError "directory")))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client or ((hsPkgs.pkgs-errors).buildToolDepError "http-client")))
        (hsPkgs.buildPackages.http-client-tls or (pkgs.buildPackages.http-client-tls or ((hsPkgs.pkgs-errors).buildToolDepError "http-client-tls")))
        (hsPkgs.buildPackages.hxt or (pkgs.buildPackages.hxt or ((hsPkgs.pkgs-errors).buildToolDepError "hxt")))
        (hsPkgs.buildPackages.hxt-xpath or (pkgs.buildPackages.hxt-xpath or ((hsPkgs.pkgs-errors).buildToolDepError "hxt-xpath")))
        (hsPkgs.buildPackages.bytestring or (pkgs.buildPackages.bytestring or ((hsPkgs.pkgs-errors).buildToolDepError "bytestring")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monad-extras" or ((hsPkgs.pkgs-errors).buildDepError "monad-extras"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        pkgconfig = [
          (pkgconfPkgs."cairo" or ((hsPkgs.pkgs-errors).pkgConfDepError "cairo"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }