{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "colonnade"; version = "1.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/colonnade#readme";
      url = "";
      synopsis = "Generic types and functions for columnar encoding and decoding";
      description = "The `colonnade` package provides a way to talk about\ncolumnar encodings and decodings of data. This package provides\nvery general types and does not provide a way for the end-user\nto actually apply the columnar encodings they build to data.\nMost users will also want to one a companion packages\nthat provides (1) a content type and (2) functions for feeding\ndata into a columnar encoding:\n\n* <https://hackage.haskell.org/package/lucid-colonnade lucid-colonnade> for `lucid` html tables\n\n* <https://hackage.haskell.org/package/blaze-colonnade blaze-colonnade> for `blaze` html tables\n\n* <https://hackage.haskell.org/package/reflex-dom-colonnade reflex-dom-colonnade> for reactive `reflex-dom` tables\n\n* <https://hackage.haskell.org/package/yesod-colonnade yesod-colonnade> for `yesod` widgets\n\n* <http://hackage.haskell.org/package/siphon siphon> for encoding and decoding CSVs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."profunctors" or ((hsPkgs.pkgs-errors).buildDepError "profunctors"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."colonnade" or ((hsPkgs.pkgs-errors).buildDepError "colonnade"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }