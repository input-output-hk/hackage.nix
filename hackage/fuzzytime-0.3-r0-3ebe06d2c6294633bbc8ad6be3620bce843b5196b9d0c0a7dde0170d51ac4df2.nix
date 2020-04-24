{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "fuzzytime"; version = "0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "kamil.stachowski@gmail.com";
      author = "Kamil Stachowski";
      homepage = "";
      url = "";
      synopsis = "Print current time in a more casual way";
      description = "Print current time in a more casual way";
      buildType = "Simple";
      };
    components = {
      exes = {
        "fuzzytime" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ];
          buildable = true;
          };
        };
      };
    }