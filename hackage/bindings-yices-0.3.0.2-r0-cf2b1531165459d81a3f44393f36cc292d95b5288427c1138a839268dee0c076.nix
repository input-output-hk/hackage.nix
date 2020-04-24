{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { yices-dynamic = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "bindings-yices"; version = "0.3.0.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Jose Iborra";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Yices theorem prover";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        libs = [
          (pkgs."yices" or ((hsPkgs.pkgs-errors).sysDepError "yices"))
          ] ++ (pkgs.lib).optional (flags.yices-dynamic) (pkgs."gmp" or ((hsPkgs.pkgs-errors).sysDepError "gmp"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }