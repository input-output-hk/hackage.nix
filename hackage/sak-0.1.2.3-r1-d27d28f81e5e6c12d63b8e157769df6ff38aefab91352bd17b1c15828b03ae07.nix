{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { with-brotli = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "sak"; version = "0.1.2.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Compression command-line tool";
      description = "sak is a command-line tool that detects and handles various compression formats";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sak" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lzlib" or ((hsPkgs.pkgs-errors).buildDepError "lzlib"))
            (hsPkgs."bz2" or ((hsPkgs.pkgs-errors).buildDepError "bz2"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."zstd" or ((hsPkgs.pkgs-errors).buildDepError "zstd"))
            (hsPkgs."lzma" or ((hsPkgs.pkgs-errors).buildDepError "lzma"))
            (hsPkgs."lz4-hs" or ((hsPkgs.pkgs-errors).buildDepError "lz4-hs"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
            ] ++ (pkgs.lib).optional (flags.with-brotli) (hsPkgs."brotli" or ((hsPkgs.pkgs-errors).buildDepError "brotli"));
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or ((hsPkgs.pkgs-errors).buildToolDepError "cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }