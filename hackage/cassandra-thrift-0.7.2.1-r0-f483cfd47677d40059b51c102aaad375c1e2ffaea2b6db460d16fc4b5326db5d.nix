{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "cassandra-thrift"; version = "0.7.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "kirk@glyphsoftware.com";
      author = "Thrift v.0.5.0";
      homepage = "http://cassandra.apache.org/";
      url = "";
      synopsis = "thrift bindings to the cassandra database";
      description = "The Cassandra (v.0.7.2) database bindings, generated using the Thrift (v.0.5.0) compliler, Released under the Apache 2.0 license.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."Thrift" or ((hsPkgs.pkgs-errors).buildDepError "Thrift"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }