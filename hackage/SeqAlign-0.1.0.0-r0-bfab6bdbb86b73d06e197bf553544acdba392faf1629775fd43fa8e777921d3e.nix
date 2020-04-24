{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "SeqAlign"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Rob O'Callahan";
      maintainer = "rcallahan@eurekagenomics.com";
      author = "Rob O'Callahan";
      homepage = "";
      url = "";
      synopsis = "Sequence Alignment";
      description = "FFI wrappers for global and local string alignment functions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }