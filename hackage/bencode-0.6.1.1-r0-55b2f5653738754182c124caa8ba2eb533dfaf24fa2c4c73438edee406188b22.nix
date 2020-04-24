{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bencode"; version = "0.6.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2005-2009, David Himmelstrup,\n(c) 2006 Lemmih <lemmih@gmail.com>,\n(c) 2005 Jesper Louis Andersen <jlouis@mongers.org>";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Lemmih <lemmih@gmail.com>,\nJesper Louis Andersen <jlouis@mongers.org>,\nChristopher Reichert <creichert07@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parsers and printers for bencoded data.";
      description = "Parsers and printers for bencoded data. Bencode (pronounced like B\nencode) is the encoding used by the peer-to-peer file sharing system\nBitTorrent for storing and transmitting loosely structured data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."bencode" or ((hsPkgs.pkgs-errors).buildDepError "bencode"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }