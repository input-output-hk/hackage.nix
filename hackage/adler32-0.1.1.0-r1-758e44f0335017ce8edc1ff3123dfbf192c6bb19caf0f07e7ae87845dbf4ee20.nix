{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { zlib = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "adler32"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/hs-adler32";
      url = "";
      synopsis = "An implementation of Adler-32, supporting rolling checksum operation";
      description = "This package provides an implementation of the Adler-32 checksum algorithm.\nIt supports a rolling checksum mode, i.e. the checksum of a sliding window\nof the input message can be computed efficiently. It also supports\ncompounding, i.e. the checksum of the concatenation of two messages can be\nefficiently computed from the checksums of the two parts.\n\nBy default, the highly optimized implementation of Adler-32 from @zlib@\nwill be used. This can be disabled, in which case a pure haskell\nimplementation will be used instead. On my system, the haskell version\nis 2 to 3 times slower.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ] ++ (pkgs.lib).optionals (flags.zlib) ((pkgs.lib).optional (!(!system.isWindows)) (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib")));
        libs = (pkgs.lib).optionals (flags.zlib) ((pkgs.lib).optional (!system.isWindows) (pkgs."z" or ((hsPkgs.pkgs-errors).sysDepError "z")));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."adler32" or ((hsPkgs.pkgs-errors).buildDepError "adler32"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      };
    }