{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "pastis"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari <alpmestan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Interface to the past.is URL shortening service";
      description = "Interface to the past.is URL shortening service through the HTTP and network packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          ];
        buildable = true;
        };
      };
    }