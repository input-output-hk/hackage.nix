{
  "0.1" = {
    sha256 = "b21b5c815540182ecc2c3344b5b82aa773d539432de19b09be69f2541d2fffda";
    revisions = {
      r0 = {
        nix = import ../hackage/codet-0.1-r0-c2cf81696b6d40e83ab02fb3b26d7b382ae975b420410604bdf785bfff4bfc34.nix;
        revNum = 0;
        sha256 = "c2cf81696b6d40e83ab02fb3b26d7b382ae975b420410604bdf785bfff4bfc34";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "7c974835760406ef4954673794c977e6944c346242b3d8e75df5b5ae91f8634b";
    revisions = {
      r0 = {
        nix = import ../hackage/codet-0.1.0.1-r0-da2aa54ec53233eaf2744bbc1c9af6a538648d3bc57433dc2799799e57cb17f2.nix;
        revNum = 0;
        sha256 = "da2aa54ec53233eaf2744bbc1c9af6a538648d3bc57433dc2799799e57cb17f2";
      };
      r1 = {
        nix = import ../hackage/codet-0.1.0.1-r1-3f1874a8e9554c60143f76493af3940d7bc07f26af1f4dcb2e81439d7c808a8c.nix;
        revNum = 1;
        sha256 = "3f1874a8e9554c60143f76493af3940d7bc07f26af1f4dcb2e81439d7c808a8c";
      };
      default = "r1";
    };
  };
}