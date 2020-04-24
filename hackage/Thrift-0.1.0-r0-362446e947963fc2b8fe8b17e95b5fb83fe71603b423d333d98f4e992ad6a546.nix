{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "Thrift"; version = "0.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "thrift-user-subscribe@incubator.apache.org";
      author = "";
      homepage = "http://incubator.apache.org/thrift";
      url = "";
      synopsis = "Thrift library package";
      description = "The Thrift Haskell package that shipped with Thrift v.0.2.0, released under the Apache 2.0 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }