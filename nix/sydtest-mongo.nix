{
  "0.0.0.0" = {
    sha256 = "015bca410c65351b0137e215189d388ae62c16bcfe8e1807e220e6de0a60a24a";
    revisions = {
      r0 = {
        nix = import ../hackage/sydtest-mongo-0.0.0.0-r0-07ac19e378ea7e1766a9f76971a6b3c67adca956c9bc0e6a330223ba936dcbe8.nix;
        revNum = 0;
        sha256 = "07ac19e378ea7e1766a9f76971a6b3c67adca956c9bc0e6a330223ba936dcbe8";
      };
      default = "r0";
    };
  };
  "0.1.0.0" = {
    sha256 = "115bd77e092236fab8fa65f4c7dff894fb4840ebba35c1fa46b08e509ec710f3";
    revisions = {
      r0 = {
        nix = import ../hackage/sydtest-mongo-0.1.0.0-r0-47a4fb39d7062f113c828e9aeefe19a703697d1d5455350946e6dde0bb74862a.nix;
        revNum = 0;
        sha256 = "47a4fb39d7062f113c828e9aeefe19a703697d1d5455350946e6dde0bb74862a";
      };
      default = "r0";
    };
  };
}