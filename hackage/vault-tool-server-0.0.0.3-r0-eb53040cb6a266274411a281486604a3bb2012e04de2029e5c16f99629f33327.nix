{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "vault-tool-server";
        version = "0.0.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mutantlemon@gmail.com";
      author = "Bit Connor";
      homepage = "https://github.com/bitc/hs-vault-tool";
      url = "";
      synopsis = "Utility library for spawning a HashiCorp Vault process";
      description = "Utility library for spawning a HashiCorp Vault process";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vault-tool)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.process)
          (hsPkgs.temporary)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vault-tool)
            (hsPkgs.vault-tool-server)
            (hsPkgs.aeson)
            (hsPkgs.tasty-hunit)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }