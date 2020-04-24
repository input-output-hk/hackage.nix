{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "interpol"; version = "0.1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "scvalex@gmail.com";
      author = "Alexandru Scvortov <scvalex@gmail.com>";
      homepage = "https://github.com/scvalex/interpol";
      url = "";
      synopsis = "GHC pre-processor to enable variable interpolation in strings";
      description = "This pre-processor enables variable interpolation in strings.  See the README.md file for details.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "interpol" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."preprocessor-tools" or ((hsPkgs.pkgs-errors).buildDepError "preprocessor-tools"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            ];
          buildable = true;
          };
        };
      };
    }