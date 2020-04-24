{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mysql-haskell-openssl"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Winterland";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/winterland1989/mysql-haskell";
      url = "";
      synopsis = "TLS support for mysql-haskell package using openssl";
      description = "TLS support for mysql-haskell package using openssl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          (hsPkgs."tcp-streams" or ((hsPkgs.pkgs-errors).buildDepError "tcp-streams"))
          (hsPkgs."tcp-streams-openssl" or ((hsPkgs.pkgs-errors).buildDepError "tcp-streams-openssl"))
          (hsPkgs."wire-streams" or ((hsPkgs.pkgs-errors).buildDepError "wire-streams"))
          (hsPkgs."mysql-haskell" or ((hsPkgs.pkgs-errors).buildDepError "mysql-haskell"))
          (hsPkgs."HsOpenSSL" or ((hsPkgs.pkgs-errors).buildDepError "HsOpenSSL"))
          ];
        buildable = true;
        };
      };
    }