{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "nix-deploy";
        version = "1.0.1";
      };
      license = "Apache-2.0";
      copyright = "2017 Awake Networks";
      maintainer = "opensource@awakenetworks.com";
      author = "Awake Networks";
      homepage = "https://github.com/awakesecurity/nix-deploy#readme";
      url = "";
      synopsis = "Deploy Nix-built software to a NixOS machine";
      description = "Deploy a NixOS system configuration with @nix-deploy system ...@ to\na remote machine and switch the machine to that system\nconfiguration. You can also deploy a nix store path with @nix-deploy\npath ...@ to a remote machine or from a remote machine.\n\nThis tool is often used in conjunction with <https://github.com/awakesecurity/nix-delegate nix-delegate>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "nix-deploy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.optparse-generic)
            (hsPkgs.optparse-applicative)
            (hsPkgs.neat-interpolation)
            (hsPkgs.text)
            (hsPkgs.turtle)
          ];
        };
      };
    };
  }