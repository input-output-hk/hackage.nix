{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "fft"; version = "0.1.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<jed@59A2.org>";
      author = "Jed Brown";
      homepage = "";
      url = "";
      synopsis = "Bindings to the FFTW library.";
      description = "Bindings to the FFTW library.\n\nProvides high performance discrete fourier transforms in\narbitrary dimensions.  Include transforms of complex data,\nreal data, and real to real transforms.\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
            (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
            (hsPkgs."ix-shapable" or ((hsPkgs.pkgs-errors).buildDepError "ix-shapable"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."carray" or ((hsPkgs.pkgs-errors).buildDepError "carray"))
            (hsPkgs."storable-complex" or ((hsPkgs.pkgs-errors).buildDepError "storable-complex"))
            (hsPkgs."ix-shapable" or ((hsPkgs.pkgs-errors).buildDepError "ix-shapable"))
            ]) ++ (if flags.base4
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        libs = [ (pkgs."fftw3" or ((hsPkgs.pkgs-errors).sysDepError "fftw3")) ];
        buildable = true;
        };
      };
    }