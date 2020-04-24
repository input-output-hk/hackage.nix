{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; pure = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "hstar"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2019-2020 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Haskell version of tar CLI utility";
      description = "Haskell implementation of the tar utility, demonstrating backpack";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hstar" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."archive-sig" or ((hsPkgs.pkgs-errors).buildDepError "archive-sig"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."lzma" or ((hsPkgs.pkgs-errors).buildDepError "lzma"))
            (hsPkgs."bz2" or ((hsPkgs.pkgs-errors).buildDepError "bz2"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."zstd" or ((hsPkgs.pkgs-errors).buildDepError "zstd"))
            (hsPkgs."lz4-hs" or ((hsPkgs.pkgs-errors).buildDepError "lz4-hs"))
            (hsPkgs."lzlib" or ((hsPkgs.pkgs-errors).buildDepError "lzlib"))
            ] ++ (if flags.pure
            then [
              (hsPkgs."archive-tar" or ((hsPkgs.pkgs-errors).buildDepError "archive-tar"))
              ]
            else [
              (hsPkgs."archive-libarchive" or ((hsPkgs.pkgs-errors).buildDepError "archive-libarchive"))
              ]);
          build-tools = [
            (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs or ((hsPkgs.pkgs-errors).buildToolDepError "cpphs")))
            ];
          buildable = true;
          };
        };
      };
    }