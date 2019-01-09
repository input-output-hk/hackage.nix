{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "n2o-nitro"; version = "0.11.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Marat Khafizov, 2018";
      maintainer = "xafizoff@gmail.com";
      author = "Marat Khafizov";
      homepage = "https://github.com/xafizoff/n2o#readme";
      url = "";
      synopsis = "Nitro Elements, Events and Actions";
      description = "Nitro DSL";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.n2o)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.bert)
          (hsPkgs.fmt)
          (hsPkgs.containers)
          (hsPkgs.base64-bytestring)
          ];
        };
      };
    }