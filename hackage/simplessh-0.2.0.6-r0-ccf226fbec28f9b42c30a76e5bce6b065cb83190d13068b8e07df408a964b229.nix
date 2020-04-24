{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "simplessh"; version = "0.2.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tho.feron@gmail.com";
      author = "Thomas Feron";
      homepage = "https://github.com/thoferon/simplessh";
      url = "";
      synopsis = "Simple wrapper around libssh2";
      description = "It supports authentication by password or keys. Everything is in the SimpleSSH monad which is ErrorT SimpleSSHError IO, allowing to manage errors in a \"haskeller\" way.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        libs = [ (pkgs."ssh2" or ((hsPkgs.pkgs-errors).sysDepError "ssh2")) ];
        buildable = true;
        };
      };
    }