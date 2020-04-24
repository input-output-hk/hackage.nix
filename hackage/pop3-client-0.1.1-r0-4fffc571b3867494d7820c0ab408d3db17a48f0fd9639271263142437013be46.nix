{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "pop3-client"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009 Peter van den Brand";
      maintainer = "Peter van den Brand <peter@vdbrand.nl>";
      author = "Peter van den Brand";
      homepage = "";
      url = "";
      synopsis = "POP3 Client Library";
      description = "pop3-client provides a Haskell library to implement a POP3 client.\n\n* Simple and safe API: connection is guaranteed to be closed, no need to know the POP3 protocol to use the API\n\n* Standards compliant\n\n* No dependencies (besides Network and the base library)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }