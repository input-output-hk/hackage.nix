{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hlivy"; version = "1.0.1"; };
      license = "MIT";
      copyright = "2019 Earnest Research";
      maintainer = "Daniel Donohue <ddonohue@earnestresearch.com>";
      author = "Daniel Donohue <ddonohue@earnestresearch.com>";
      homepage = "https://github.com/EarnestResearch/hlivy";
      url = "";
      synopsis = "Client library for the Apache Livy REST API";
      description = "Client library for the Apache Livy REST API -- see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      };
    }