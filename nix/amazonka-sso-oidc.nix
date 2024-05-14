{
  "2.0" = {
    sha256 = "54bba85d6e283a683b101ad8bd4ef27716a0be0c19c9c96f43a6960cce7284e0";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-sso-oidc-2.0-r0-cd74ffd667751bde082434adcec0213e5bea8312d88b725c97bbff8846800cd2.nix;
        revNum = 0;
        sha256 = "cd74ffd667751bde082434adcec0213e5bea8312d88b725c97bbff8846800cd2";
      };
      r1 = {
        nix = import ../hackage/amazonka-sso-oidc-2.0-r1-c4424093aa0ffc5e5f20cdcfc18dedf5804487a59eed0e3990c1c97ccaf351ac.nix;
        revNum = 1;
        sha256 = "c4424093aa0ffc5e5f20cdcfc18dedf5804487a59eed0e3990c1c97ccaf351ac";
      };
      default = "r1";
    };
  };
}