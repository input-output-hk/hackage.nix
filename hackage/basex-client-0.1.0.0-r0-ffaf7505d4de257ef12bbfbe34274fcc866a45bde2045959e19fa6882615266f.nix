{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "basex-client"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "matthijssteen1990@gmail.com";
      author = "Matthijs Steen";
      homepage = "";
      url = "";
      synopsis = "A BaseX client for Haskell";
      description = "A BaseX client library for Haskell that connects to the BaseX server using a socket. BaseX is a light-weight, high-performance and scalable XML Database written in Java.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      };
    }