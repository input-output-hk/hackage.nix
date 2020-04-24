{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hyperdrive"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2012 Jeremy Shaw";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "a fast, trustworthy HTTP(s) server built";
      description = "hyperdrive aims to provide an HTTP server which is not only\nextremely fast, but also provides a high-level of proof that\nits implementation is correct.\n\nhyperdrive is still in alpha and not at all suitable for\nuse. The current implementation is relatively fast, but does\nnot yet use any of the techniques for proof-of-correctness. It\nalso does not implement many essential features yet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-lexing" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-lexing"))
          (hsPkgs."extensible-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "extensible-exceptions"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ];
        buildable = true;
        };
      exes = { "pong" = { buildable = true; }; };
      };
    }