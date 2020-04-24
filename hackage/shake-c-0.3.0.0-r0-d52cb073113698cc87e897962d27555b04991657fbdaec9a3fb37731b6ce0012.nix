{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "shake-c"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/shake-c#readme";
      url = "";
      synopsis = "Library for building C code with shake";
      description = "Facilities for building C libraries and binaries, and depending on C source files. Extends [shake](http://hackage.haskell.org/package/shake).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."shake" or ((hsPkgs.pkgs-errors).buildDepError "shake"))
          (hsPkgs."cdeps" or ((hsPkgs.pkgs-errors).buildDepError "cdeps"))
          ];
        buildable = true;
        };
      };
    }