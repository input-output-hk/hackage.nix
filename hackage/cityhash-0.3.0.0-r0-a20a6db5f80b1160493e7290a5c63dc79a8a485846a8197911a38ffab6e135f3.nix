{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { sse42 = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "cityhash"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "Austin Seipp <mad.one@gmail.com>";
      homepage = "http://github.com/thoughtpolice/hs-cityhash";
      url = "";
      synopsis = "Bindings to CityHash";
      description = "This package implements a binding to the CityHash family of hashing functions (implemented in C++.)\n\nSee <http://code.google.com/p/cityhash/> for more information.\n\nThis package has optional SSE4.2 support. If you build it with the @-fsse42@ flag, the 128-bit\nhashing functions will use an SSE-optimized implementation (which takes advantage of the @crc32@\ninstruction present on recent Intel/AMD machines.) The 64-bit hashing functions are unaffected.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."largeword" or ((hsPkgs.pkgs-errors).buildDepError "largeword"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."cityhash" or ((hsPkgs.pkgs-errors).buildDepError "cityhash"))
            ];
          buildable = true;
          };
        };
      };
    }