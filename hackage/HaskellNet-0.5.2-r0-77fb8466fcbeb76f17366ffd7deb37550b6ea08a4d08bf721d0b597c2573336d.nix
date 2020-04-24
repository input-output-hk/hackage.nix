{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-bsd = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "HaskellNet"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Jun Mukai";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>,\nLeza Morais Lutonda <lemol-c@outlook.com>";
      author = "Jun Mukai";
      homepage = "https://github.com/jtdaugherty/HaskellNet";
      url = "";
      synopsis = "Client support for POP3, SMTP, and IMAP";
      description = "This package provides client support for the POP3,\nSMTP, and IMAP protocols.  NOTE: this package will be\nsplit into smaller, protocol-specific packages in the\nfuture.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."cryptohash" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash"))
          (hsPkgs."base64-string" or ((hsPkgs.pkgs-errors).buildDepError "base64-string"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."mime-mail" or ((hsPkgs.pkgs-errors).buildDepError "mime-mail"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or ((hsPkgs.pkgs-errors).buildDepError "fail"))) ++ (if flags.network-bsd
          then [
            (hsPkgs."network-bsd" or ((hsPkgs.pkgs-errors).buildDepError "network-bsd"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }