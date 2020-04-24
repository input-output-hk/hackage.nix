{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "cabal2spec"; version = "1.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "konrad@tylerc.org";
      author = "Conrad Meyer, Yaakov M. Nemoy";
      homepage = "https://fedorahosted.org/cabal2spec/";
      url = "";
      synopsis = "Generates RPM Spec files from cabal files";
      description = "This package provides specfile templates and a script cabal2spec for easy\npackaging of Haskell Cabal packages (hackages) for ghc following\nthe Fedora Haskell Packaging Guidelines and associated RPM macros.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal2spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."Unixutils" or ((hsPkgs.pkgs-errors).buildDepError "Unixutils"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            ];
          buildable = true;
          };
        };
      };
    }