{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "classy-influxdb-simple"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 Sean Chalmers";
      maintainer = "sclhiannan@gmail.com.au";
      author = "Sean Chalmers";
      homepage = "https://github.com/mankyKitty/classy-influxdb-simple#readme";
      url = "";
      synopsis = "Super simple InfluxDB package in Classy-MTL style";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."async-io-either" or ((hsPkgs.pkgs-errors).buildDepError "async-io-either"))
          ];
        buildable = true;
        };
      };
    }