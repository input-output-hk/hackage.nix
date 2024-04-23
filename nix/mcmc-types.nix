{
  "1.0.0" = {
    sha256 = "32a37b58780bfa2b550be814321434c7b9275e1b69ea7af6341485cf046dc1fd";
    revisions = {
      r0 = {
        nix = import ../hackage/mcmc-types-1.0.0-r0-75a307aaa13a54b1a86871b232d8ae4bd456976443dde0706ade8c4e01e1d98f.nix;
        revNum = 0;
        sha256 = "75a307aaa13a54b1a86871b232d8ae4bd456976443dde0706ade8c4e01e1d98f";
      };
      r1 = {
        nix = import ../hackage/mcmc-types-1.0.0-r1-c156ffd71b9f66f2257ef632235989bbfe36bcd221c68b5aa317277b245b33d0.nix;
        revNum = 1;
        sha256 = "c156ffd71b9f66f2257ef632235989bbfe36bcd221c68b5aa317277b245b33d0";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "04e11474719161813da8ce505a7052853a26a237d5ddee99ed198a3326b246e0";
    revisions = {
      r0 = {
        nix = import ../hackage/mcmc-types-1.0.1-r0-38ae4422cd7a7d282f4b0b78572d544667e815aefc9d29e5e6be23f0d69c1741.nix;
        revNum = 0;
        sha256 = "38ae4422cd7a7d282f4b0b78572d544667e815aefc9d29e5e6be23f0d69c1741";
      };
      default = "r0";
    };
  };
  "1.0.2" = {
    sha256 = "5d2fd31114e45516b2437827e89b0572e9e9db87a7201d77b437de6e2bba54f3";
    revisions = {
      r0 = {
        nix = import ../hackage/mcmc-types-1.0.2-r0-6ebf389a0b6799cd609a30533b05c638fdaf36a6afeff9c58f674eebd68e3565.nix;
        revNum = 0;
        sha256 = "6ebf389a0b6799cd609a30533b05c638fdaf36a6afeff9c58f674eebd68e3565";
      };
      default = "r0";
    };
  };
  "1.0.3" = {
    sha256 = "3c4b25030b05567694ddc313ca808a32133ad5433b4d89837e1ed00bbfcefc6e";
    revisions = {
      r0 = {
        nix = import ../hackage/mcmc-types-1.0.3-r0-ab64e4874cdd5eb4611e0616ab1299f64af067bc00329b93a3d931a2ec8acebd.nix;
        revNum = 0;
        sha256 = "ab64e4874cdd5eb4611e0616ab1299f64af067bc00329b93a3d931a2ec8acebd";
      };
      default = "r0";
    };
  };
}