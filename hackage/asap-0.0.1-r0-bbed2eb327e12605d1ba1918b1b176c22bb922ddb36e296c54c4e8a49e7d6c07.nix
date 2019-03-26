{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "asap"; version = "0.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "marketplace@atlassian.com";
      author = "Atlassian Marketplace";
      homepage = "https://bitbucket.org/atlassian-marketplace/haskell-asap";
      url = "";
      synopsis = "Atlassian Service Authentication Protocol";
      description = "Atlassian Service Authentication Protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.jwt)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.semigroups)
          (hsPkgs.lens)
          (hsPkgs.uuid)
          ];
        };
      tests = {
        "asap-tests" = {
          depends = [
            (hsPkgs.asap)
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.jwt)
            (hsPkgs.hedgehog)
            ];
          };
        };
      };
    }