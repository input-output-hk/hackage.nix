{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "slice-cpp-gen"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Paul Koerbitz 2013";
      maintainer = "paul.koerbitz@gmail.com";
      author = "Paul Koerbitz";
      homepage = "https://github.com/paulkoerbitz/slice-cpp-gen";
      url = "";
      synopsis = "Generate C++ skeletons from slice files";
      description = "Generate C++ skeletons from slice files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "slice-cpp-gen" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."language-slice" or ((hsPkgs.pkgs-errors).buildDepError "language-slice"))
            ];
          buildable = true;
          };
        };
      };
    }