{
  "0.0.0.0" = {
    sha256 = "b658174861707772bb5afdc2c88c618407fcced45f317ed8b3e430b68ef074e1";
    revisions = {
      r0 = {
        nix = import ../hackage/aws-secrets-0.0.0.0-r0-68d6b2bba6808bea3a0d138141b2fbfb86512f6ffdeeb8c0187842e54d7a46ea.nix;
        revNum = 0;
        sha256 = "68d6b2bba6808bea3a0d138141b2fbfb86512f6ffdeeb8c0187842e54d7a46ea";
        };
      r1 = {
        nix = import ../hackage/aws-secrets-0.0.0.0-r1-4ed2d20206bd8005b535920f6873dd401818baa0025b9cfb306e10faafbe7698.nix;
        revNum = 1;
        sha256 = "4ed2d20206bd8005b535920f6873dd401818baa0025b9cfb306e10faafbe7698";
        };
      default = "r1";
      };
    };
  }