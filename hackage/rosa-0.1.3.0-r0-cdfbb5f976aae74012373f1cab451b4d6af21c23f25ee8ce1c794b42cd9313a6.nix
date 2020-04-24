{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rosa"; version = "0.1.3.0"; };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco 2014";
      maintainer = "micheleguerinirocco@me.com";
      author = "Rnhmjoj";
      homepage = "";
      url = "";
      synopsis = "Query the namecoin blockchain";
      description = "Rosa is a commmand line tool to query the namecoin blockhain.\nIt gets the JSON value of a name and other infos using namecoind\nlocal server or the dnschain REST api and display them in a pretty\nformat.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "rosa" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."wreq" or ((hsPkgs.pkgs-errors).buildDepError "wreq"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."argparser" or ((hsPkgs.pkgs-errors).buildDepError "argparser"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }