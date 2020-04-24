{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "halvm-web"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016, Adam Wick";
      maintainer = "awick@galois.com";
      author = "Adam Wick";
      homepage = "http://halvm.org";
      url = "";
      synopsis = "A simple, static HaLVM web server";
      description = "A simple, static HaLVM web server";
      buildType = "Simple";
      };
    components = {
      exes = {
        "halvm-web" = {
          depends = [
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."HALVMCore" or ((hsPkgs.pkgs-errors).buildDepError "HALVMCore"))
            (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."mime-types" or ((hsPkgs.pkgs-errors).buildDepError "mime-types"))
            (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
            (hsPkgs."simple-tar" or ((hsPkgs.pkgs-errors).buildDepError "simple-tar"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."XenDevice" or ((hsPkgs.pkgs-errors).buildDepError "XenDevice"))
            ];
          buildable = true;
          };
        };
      };
    }