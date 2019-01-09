{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "vault-trans"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Bitnomial, Inc. (c) 2018";
      maintainer = "michael@bitnomial.com, opensource@bitnomial.com";
      author = "Michael Dunn";
      homepage = "https://github.com/bitnomial/vault-trans";
      url = "";
      synopsis = "A monad transformer for vault-tool";
      description = "Monad transformer for interfacing with vault.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vault-tool)
          ];
        };
      };
    }