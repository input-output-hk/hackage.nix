{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { example = false; documentation = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "network-service"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2014 Moritz Angermann";
      maintainer = "moritz@lichtzwerge.de";
      author = "Moritz Angermann";
      homepage = "https://github.com/angerman/network-service";
      url = "";
      synopsis = "Provide a service at the data type level.";
      description = "Thin very layer over network-simple, that allows to write\na service that can be communicated with at the data level.\nMakes it trivial to build a services upon a data type,\nprovided a ByteString serialization can be given.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          ] ++ (pkgs.lib).optional (flags.documentation) (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"));
        buildable = true;
        };
      exes = {
        "echo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."network-simple" or ((hsPkgs.pkgs-errors).buildDepError "network-simple"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            ];
          buildable = if flags.example then true else false;
          };
        };
      };
    }